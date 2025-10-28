import 'package:app_maps/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../cubit/auth_cubit.dart';
import '../../domain/entities/user_entity.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(AuthRepositoryImpl.create()),
      child: const _LoginView(),
    );
  }
}

class _LoginView extends StatefulWidget {
  const _LoginView();

  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  final usernameController = TextEditingController(text: 'emilys');
  final passwordController = TextEditingController(text: 'emilyspass');

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await cubit.login(
                  usernameController.text,
                  passwordController.text,
                );
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            BlocListener<AuthCubit, UserEntity?>(
              listener: (context, state) {
                if (state != null) {
                  // ✅ Navigate to Home after successful login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => HomeScreen()),
                  );
                }
              },
              child: BlocBuilder<AuthCubit, UserEntity?>(
                builder: (context, state) {
                  if (state == null) {
                    return const Text('Not logged in');
                  }
                  return Text('Logging in as ${state.username}...');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
