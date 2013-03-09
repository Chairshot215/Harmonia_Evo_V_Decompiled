.class public Lcom/google/android/gsf/loginservice/TestService;
.super Landroid/app/IntentService;
.source "TestService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "TestService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 19
    .parameter "req"

    .prologue
    .line 38
    const-string v5, "jsInject"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 39
    .local v13, js:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 40
    sget-object v5, Lcom/google/android/gsf/login/BrowserActivity;->sTestBrowser:Lcom/google/android/gsf/login/BrowserActivity;

    if-eqz v5, :cond_0

    .line 41
    sget-object v5, Lcom/google/android/gsf/login/BrowserActivity;->sTestBrowser:Lcom/google/android/gsf/login/BrowserActivity;

    invoke-virtual {v5, v13}, Lcom/google/android/gsf/login/BrowserActivity;->inject(Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v5, "authAccount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 46
    .local v11, email:Ljava/lang/String;
    const-string v5, "service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 47
    .local v16, service:Ljava/lang/String;
    const-string v5, "injectedResponse"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 48
    .local v15, res:Ljava/lang/String;
    const-string v5, "password"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 50
    .local v14, password:Ljava/lang/String;
    if-eqz v16, :cond_2

    if-eqz v15, :cond_2

    .line 52
    const-string v5, "\\n"

    const-string v6, "\n"

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 53
    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->getInjector()Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;

    move-result-object v12

    .line 54
    .local v12, injector:Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v15}, Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;->injectTestResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v12           #injector:Lcom/google/android/gsf/loginservice/GLSUser$HttpTestInjector;
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v3

    .line 60
    .local v3, glsAccount:Lcom/google/android/gsf/loginservice/GLSUser;
    iget-boolean v5, v3, Lcom/google/android/gsf/loginservice/GLSUser;->existing:Z

    if-nez v5, :cond_4

    if-eqz v14, :cond_4

    .line 61
    const-string v5, "oauth1:"

    invoke-virtual {v14, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    const/4 v5, 0x7

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 63
    .local v17, token:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/android/gsf/loginservice/GLSUser;->setToken(Ljava/lang/String;)V

    .line 64
    const/4 v14, 0x0

    .line 68
    .end local v17           #token:Ljava/lang/String;
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->newSession()Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v4

    .line 69
    .local v4, session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    const-string v5, "useBrowser"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "created"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "setupWizard"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "accessToken"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gsf/loginservice/GLSUser;->addAccount(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;ZZZLjava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 66
    .end local v4           #session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    :cond_3
    invoke-virtual {v3, v14}, Lcom/google/android/gsf/loginservice/GLSUser;->setPassword(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_4
    const-string v5, "app"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, app:Ljava/lang/String;
    const-string v5, "uid"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 81
    .local v18, uid:I
    if-nez v18, :cond_5

    if-eqz v9, :cond_5

    .line 82
    invoke-virtual {v3, v9}, Lcom/google/android/gsf/loginservice/GLSUser;->getUid(Ljava/lang/String;)I

    move-result v18

    .line 85
    :cond_5
    if-eqz v14, :cond_6

    .line 86
    invoke-virtual {v3, v14}, Lcom/google/android/gsf/loginservice/GLSUser;->setPassword(Ljava/lang/String;)V

    .line 89
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gsf/loginservice/TokenService;->processIntent(Lcom/google/android/gsf/loginservice/GLSUser;Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v10

    .line 92
    .local v10, authRes:Landroid/content/Intent;
    invoke-virtual {v3, v10}, Lcom/google/android/gsf/loginservice/GLSUser;->getToken(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v17

    .line 93
    .restart local v17       #token:Ljava/lang/String;
    const-string v5, "GoogleLoginService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v17, :cond_7

    .line 96
    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GLSUser;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "com.google"

    move-object/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_7
    if-nez v17, :cond_0

    .line 99
    const-string v5, "intent"

    invoke-virtual {v10, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/gsf/loginservice/TestService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
