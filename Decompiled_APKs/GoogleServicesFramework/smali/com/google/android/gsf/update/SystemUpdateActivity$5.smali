.class Lcom/google/android/gsf/update/SystemUpdateActivity$5;
.super Ljava/lang/Object;
.source "SystemUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/SystemUpdateActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$5;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$5;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    const/4 v1, 0x0

    #calls: Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$400(Lcom/google/android/gsf/update/SystemUpdateActivity;Z)V

    .line 229
    return-void
.end method
