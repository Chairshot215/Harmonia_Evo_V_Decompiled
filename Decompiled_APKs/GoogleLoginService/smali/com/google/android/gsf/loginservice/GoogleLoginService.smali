.class public Lcom/google/android/gsf/loginservice/GoogleLoginService;
.super Landroid/app/Service;
.source "GoogleLoginService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;,
        Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;
    }
.end annotation


# static fields
.field private static OAUTH_PREFIX:Ljava/lang/String;

.field static notifications:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthenticator:Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

.field mGlsBinder:Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;

.field mHasFeatureServicesRefreshIntervalS:J

.field mServicesRefreshIntervalS:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "oauth:"

    sput-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->OAUTH_PREFIX:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notifications:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 123
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mServicesRefreshIntervalS:J

    .line 126
    const-wide/16 v0, 0xa

    iget-wide v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mServicesRefreshIntervalS:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mHasFeatureServicesRefreshIntervalS:J

    .line 521
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->accountHasFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->doPermissionNotification(Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->doSignOnNotification(Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkBinderPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/accounts/AccountManager;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAccountInternal(Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkPasswordPermission()V

    return-void
.end method

.method private accountHasFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    .locals 16
    .parameter "accountManager"
    .parameter "account"
    .parameter "features"

    .prologue
    .line 199
    const/4 v9, 0x1

    .line 201
    .local v9, hasFeatures:Z
    move-object/from16 v5, p3

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v7, v5, v11

    .line 202
    .local v7, feature:Ljava/lang/String;
    const-string v15, "youtubelinked"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 203
    const/4 v9, 0x1

    .line 245
    .end local v7           #feature:Ljava/lang/String;
    .end local v11           #i$:I
    :cond_0
    :goto_1
    return v9

    .line 205
    .restart local v7       #feature:Ljava/lang/String;
    .restart local v11       #i$:I
    :cond_1
    const-string v15, "hosted_or_google"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 206
    const/4 v9, 0x1

    .line 207
    goto :goto_1

    .line 208
    :cond_2
    const-string v15, "google"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 209
    const/4 v9, 0x1

    .line 210
    goto :goto_1

    .line 211
    :cond_3
    const-string v15, "legacy_google"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 213
    const/4 v9, 0x1

    .line 214
    goto :goto_1

    .line 215
    :cond_4
    const-string v15, "legacy_hosted_or_google"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 216
    const/4 v9, 0x1

    .line 217
    goto :goto_1

    .line 218
    :cond_5
    const-string v15, "service_"

    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 219
    const-string v15, "service_"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 221
    .local v14, serviceName:Ljava/lang/String;
    sget-object v15, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v15}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, accountServices:Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 224
    const-string v15, ","

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, accountServicesArray:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 226
    .local v8, found:Z
    move-object v6, v4

    .local v6, arr$:[Ljava/lang/String;
    array-length v13, v6

    .local v13, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_2
    if-ge v10, v13, :cond_6

    aget-object v2, v6, v10

    .line 227
    .local v2, accountService:Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 228
    const/4 v8, 0x1

    .line 232
    .end local v2           #accountService:Ljava/lang/String;
    :cond_6
    if-nez v8, :cond_9

    .line 233
    const/4 v9, 0x0

    .line 234
    goto :goto_1

    .line 226
    .restart local v2       #accountService:Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 241
    .end local v2           #accountService:Ljava/lang/String;
    .end local v3           #accountServices:Ljava/lang/String;
    .end local v4           #accountServicesArray:[Ljava/lang/String;
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #found:Z
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v14           #serviceName:Ljava/lang/String;
    .restart local v11       #i$:I
    :cond_8
    const/4 v9, 0x0

    .line 242
    goto :goto_1

    .line 201
    .end local v11           #i$:I
    .restart local v3       #accountServices:Ljava/lang/String;
    .restart local v14       #serviceName:Ljava/lang/String;
    :cond_9
    add-int/lit8 v10, v11, 0x1

    .restart local v10       #i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto :goto_0
.end method

.method static cancelPermissionNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "username"
    .parameter "id"

    .prologue
    .line 857
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleLoginService.SIGNON:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08010a

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 859
    return-void
.end method

.method static cancelSignOnNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "username"

    .prologue
    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleLoginService.SIGNON:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, nid:Ljava/lang/String;
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLoginService.SIGNON:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08010a

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 853
    sget-object v1, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notifications:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    return-void
.end method

.method private checkBinderPermissions(Ljava/lang/String;)V
    .locals 3
    .parameter "permission"

    .prologue
    .line 941
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lacks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, msg:Ljava/lang/String;
    const-string v1, "GoogleLoginService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 955
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkPasswordPermission()V
    .locals 3

    .prologue
    .line 919
    const-string v1, "com.google.android.googleapps.permission.ACCESS_GOOGLE_PASSWORD"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lacks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.google.android.googleapps.permission.ACCESS_GOOGLE_PASSWORD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, msg:Ljava/lang/String;
    const-string v1, "GoogleLoginService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 933
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private doPermissionNotification(Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 11
    .parameter "message"
    .parameter "intent"
    .parameter "username"
    .parameter "uid"

    .prologue
    const/4 v10, 0x0

    .line 810
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const/high16 v6, 0x1400

    invoke-virtual {p2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 812
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GoogleLoginService.SIGNON:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, nid:Ljava/lang/String;
    const-string v6, "notificationId"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    const v6, 0x7f080138

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p3, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 818
    .local v5, titleAndSubtitle:Ljava/lang/String;
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 819
    .local v0, index:I
    move-object v4, v5

    .line 820
    .local v4, title:Ljava/lang/String;
    const-string v3, ""

    .line 821
    .local v3, subtitle:Ljava/lang/String;
    if-lez v0, :cond_0

    .line 822
    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 823
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 826
    :cond_0
    new-instance v1, Landroid/app/Notification;

    const v6, 0x108008a

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 830
    .local v1, n:Landroid/app/Notification;
    const/high16 v6, 0x1000

    invoke-static {p0, v10, p2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, p0, v4, v3, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 836
    invoke-direct {p0, v2, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notify(Ljava/lang/String;Landroid/app/Notification;)V

    .line 838
    return-void
.end method

.method private doSignOnNotification(Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .parameter "message"
    .parameter "intent"
    .parameter "username"

    .prologue
    const/4 v6, 0x0

    .line 787
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLoginService.SIGNON:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, nid:Ljava/lang/String;
    const-string v2, "notificationId"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const/high16 v2, 0x1400

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 791
    new-instance v0, Landroid/app/Notification;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 795
    .local v0, n:Landroid/app/Notification;
    const v2, 0x7f080139

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x1000

    invoke-static {p0, v6, p2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, p0, v2, p1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 801
    invoke-direct {p0, v1, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notify(Ljava/lang/String;Landroid/app/Notification;)V

    .line 802
    return-void
.end method

.method private static getAccountInternal(Landroid/accounts/AccountManager;Z)Ljava/lang/String;
    .locals 2
    .parameter "accountManager"
    .parameter "requireGoogle"

    .prologue
    .line 508
    const-string v1, "com.google"

    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 511
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 512
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 514
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getAuthTokenLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "authTokenType"

    .prologue
    const/4 v4, 0x0

    .line 1009
    sget-object v5, Lcom/google/android/gsf/loginservice/GoogleLoginService;->OAUTH_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return-object v4

    .line 1013
    :cond_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.google.android.googleapps.permission.GOOGLE_AUTH."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1014
    .local v2, permissionName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1015
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 1016
    .local v0, info:Landroid/content/pm/PermissionInfo;
    iget v5, v0, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-eqz v5, :cond_2

    .line 1017
    iget-object v5, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/PermissionInfo;->labelRes:I

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1019
    .local v1, label:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 1020
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1023
    .end local v1           #label:Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 1024
    iget-object v5, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1026
    :cond_3
    iget-object v5, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1027
    iget-object v4, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1030
    .end local v0           #info:Landroid/content/pm/PermissionInfo;
    .end local v2           #permissionName:Ljava/lang/String;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private notify(Ljava/lang/String;Landroid/app/Notification;)V
    .locals 2
    .parameter "nid"
    .parameter "n"

    .prologue
    .line 841
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f08010a

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 843
    sget-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notifications:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    sget-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notifications:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 845
    sget-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notifications:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/google/android/gsf/loginservice/GoogleLoginService;->notifications:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    :cond_0
    return-void
.end method

.method public static onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "username"
    .parameter "extras"

    .prologue
    .line 1042
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->cancelSignOnNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method public static onlineConfirmPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 5
    .parameter "context"
    .parameter "user"
    .parameter "password"
    .parameter "session"

    .prologue
    .line 873
    const/4 v3, 0x1

    invoke-static {p0, p1, v3}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v0

    .line 874
    .local v0, accountInfo:Lcom/google/android/gsf/loginservice/GLSUser;
    invoke-virtual {v0, p2}, Lcom/google/android/gsf/loginservice/GLSUser;->setPassword(Ljava/lang/String;)V

    .line 875
    const-string v3, "ac2dm"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p3}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuthtoken(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;

    move-result-object v1

    .line 878
    .local v1, res:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Lcom/google/android/gsf/loginservice/GLSUser;->getToken(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 879
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 886
    :cond_0
    :goto_0
    return-object v2

    .line 882
    :cond_1
    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GLSUser;->getError(Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v2

    .line 883
    .local v2, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEEDS_2F:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v2, v3, :cond_0

    .line 884
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 1047
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->dump(Ljava/io/PrintWriter;)V

    .line 1048
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 165
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.LOGIN_ACCOUNTS_MISSING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, send:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    .end local v0           #send:Landroid/content/Intent;
    :cond_0
    const-string v1, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mAuthenticator:Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mGlsBinder:Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 139
    new-instance v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;-><init>(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mAuthenticator:Lcom/google/android/gsf/loginservice/GoogleLoginService$AccountAuthenticatorImpl;

    .line 140
    new-instance v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;-><init>(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mGlsBinder:Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;

    .line 144
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "services_refresh_s"

    const-wide/32 v2, 0x15180

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mServicesRefreshIntervalS:J

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "services_refresh_existing_s"

    const-wide/32 v2, 0xd2f00

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService;->mHasFeatureServicesRefreshIntervalS:J

    .line 151
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "serviceFlags"
    .parameter "startId"

    .prologue
    const/4 v0, 0x3

    .line 188
    if-nez p1, :cond_0

    .line 194
    :cond_0
    return v0
.end method
