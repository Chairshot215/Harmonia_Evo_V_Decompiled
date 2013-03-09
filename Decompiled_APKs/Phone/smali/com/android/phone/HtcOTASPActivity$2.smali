.class Lcom/android/phone/HtcOTASPActivity$2;
.super Ljava/lang/Object;
.source "HtcOTASPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcOTASPActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcOTASPActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcOTASPActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/phone/HtcOTASPActivity$2;->this$0:Lcom/android/phone/HtcOTASPActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/phone/HtcOTASPActivity$2;->this$0:Lcom/android/phone/HtcOTASPActivity;

    invoke-virtual {v1}, Lcom/android/phone/HtcOTASPActivity;->finish()V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel:*228"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/HtcOTASPActivity$2;->this$0:Lcom/android/phone/HtcOTASPActivity;

    invoke-virtual {v1, v0}, Lcom/android/phone/HtcOTASPActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
