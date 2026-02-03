<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Permission required</title>
  <style>
    body { font-family: 'Inter', Arial, sans-serif; background:#f7f8fa; color:#223; text-align:center; padding:48px; }
    .card { max-width:640px; margin:0 auto; background:#fff; padding:28px; border-radius:12px; box-shadow:0 8px 30px rgba(18,24,40,0.06); }
    h1 { font-size:2.4rem; color:#2d3748; margin:0 0 8px; }
    p { color:#475569; font-size:1.05rem; margin:0 0 18px; }
    a.button { display:inline-block; margin:8px 10px; padding:10px 18px; background:#2563eb; color:#fff; border-radius:8px; text-decoration:none; }
    a.secondary { color:#6b7280; text-decoration:none; margin-left:8px; }
    .meta { margin-top:16px; color:#9aa4b2; font-size:0.9rem; }
  </style>
</head>
<body>
  <div class="card">
    <h1>Oops — you don't have permission</h1>
    <p>We couldn't grant access to the page you requested. If you think this is a mistake, reach out to our support team and include the URL shown below.</p>
    <div>
      <a class="button" href="${pageContext.request.contextPath}/">Go to homepage</a>
      <a class="secondary" href="mailto:support@example.com">Contact support</a>
    </div>
    <div class="meta">Requested URI: <code>${request.getAttribute("javax.servlet.error.request_uri")}</code></div>
  </div>
</body>
</html>
