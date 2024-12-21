syms x;

f = x^3 - 6*x^2 + 9*x + 1;

f_prime = diff(f, x);
disp('First derivative:');
disp(f_prime);

critical_points = solve(f_prime == 0, x);
disp('Critical points:');
disp(critical_points);

f_double_prime = diff(f_prime, x);
disp('Second derivative:');
disp(f_double_prime);

len=length(critical_points);
disp(len)

for i = 1:length(critical_points)

    x_critic = critical_points(i);
    f_value = subs(f, x, x_critic);
    f_double_prime_value = double(subs(f_double_prime, x, x_critic));

    if f_double_prime_value > 0
        fprintf('Local minima: x = %0.2f, f(x) = %0.2f\n', double(x_critic), double(f_value));
    elseif f_double_prime_value < 0
        fprintf('Local maxima: x = %0.2f, f(x) = %0.2f\n', double(x_critic), double(f_value));
    end

end
