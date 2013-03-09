.class Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScribbleToast"
.end annotation


# instance fields
.field public init:Z

.field mContext:Landroid/content/Context;

.field mMessage:Ljava/lang/String;

.field mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;->init:Z

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;->init:Z

    :try_start_0
    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScribblePackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScribbleMessageName:Ljava/lang/String;

    const-string v4, "string"

    iget-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScribblePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;->mMessage:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;->init:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;->mToast:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScribbleToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
