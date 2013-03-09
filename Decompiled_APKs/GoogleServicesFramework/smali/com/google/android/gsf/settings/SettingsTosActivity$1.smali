.class Lcom/google/android/gsf/settings/SettingsTosActivity$1;
.super Ljava/lang/Object;
.source "SettingsTosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/settings/SettingsTosActivity;->makeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/settings/SettingsTosActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/settings/SettingsTosActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/gsf/settings/SettingsTosActivity$1;->this$0:Lcom/google/android/gsf/settings/SettingsTosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity$1;->this$0:Lcom/google/android/gsf/settings/SettingsTosActivity;

    #getter for: Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;
    invoke-static {v0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->access$000(Lcom/google/android/gsf/settings/SettingsTosActivity;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/common/GoogleWebContentHelper;->handleKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
