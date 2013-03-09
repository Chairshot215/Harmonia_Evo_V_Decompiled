.class Lcom/google/android/voicesearch/TimeoutDialog$4;
.super Ljava/lang/Object;
.source "TimeoutDialog.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/TimeoutDialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/TimeoutDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/TimeoutDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/voicesearch/TimeoutDialog$4;->this$0:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/voicesearch/TimeoutDialog$4;->this$0:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/TimeoutDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/voicesearch/TimeoutDialog$4;->this$0:Lcom/google/android/voicesearch/TimeoutDialog;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/TimeoutDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/voicesearch/VoiceSearchPreferences;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 230
    const/4 v0, 0x1

    return v0
.end method
