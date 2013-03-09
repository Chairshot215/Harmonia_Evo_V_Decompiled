.class Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$2;
.super Ljava/lang/Object;
.source "WaitForDeviceCountryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$2;->this$0:Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$2;->this$0:Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->haveCheckin(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$2;->this$0:Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->returnResult(I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$2;->this$0:Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->returnResult(I)V

    .line 73
    return-void
.end method
