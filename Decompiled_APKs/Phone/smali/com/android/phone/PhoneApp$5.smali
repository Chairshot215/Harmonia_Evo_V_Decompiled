.class Lcom/android/phone/PhoneApp$5;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneApp;->doCbQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 6411
    iput-object p1, p0, Lcom/android/phone/PhoneApp$5;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6413
    const-string v0, "com.android.mms"

    invoke-static {v0}, Lcom/android/phone/util/CbsUtils;->checkPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 6416
    :try_start_0
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->queryCmasSupportStatus()V

    .line 6417
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->initializeDefaultChList()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6426
    :cond_0
    :goto_0
    const-string v0, "PhoneApp"

    const-string v3, "phone init, start to query, CB db"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6427
    iget-object v0, p0, Lcom/android/phone/PhoneApp$5;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mCbQueryHandler:Lcom/android/phone/PhoneApp$CbQueryHandler;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$6700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$CbQueryHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/PhoneApp$5;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mCbQueryHandler:Lcom/android/phone/PhoneApp$CbQueryHandler;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$6700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$CbQueryHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/phone/PhoneApp$5;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mCbQueryHandler:Lcom/android/phone/PhoneApp$CbQueryHandler;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$6700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$CbQueryHandler;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp$CbQueryHandler;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/PhoneApp$5;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mCbQueryHandler:Lcom/android/phone/PhoneApp$CbQueryHandler;
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$6700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$CbQueryHandler;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp$CbQueryHandler;->PROJECTION:[Ljava/lang/String;

    const-string v5, "enable=1"

    const-string v7, "channel DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/PhoneApp$CbQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6430
    return-void

    .line 6418
    :catch_0
    move-exception v8

    .line 6419
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: CbsUtils.queryCmasSupport/initializeDefaultChList,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
