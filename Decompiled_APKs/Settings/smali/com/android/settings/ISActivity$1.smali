.class Lcom/android/settings/ISActivity$1;
.super Ljava/lang/Object;
.source "ISActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ISActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ISActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/ISActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "keyevent"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 83
    :cond_0
    const-string v0, "NetSharing_ISActivity"

    const-string v1, "Press Back Key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    iget-object v0, v0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v0}, Lcom/android/settings/ISActivity;->finish()V

    .line 100
    :cond_2
    :goto_0
    return v2

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    iget-object v0, v0, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v0}, Lcom/android/settings/ISActivity;->finish()V

    goto :goto_0

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    #getter for: Lcom/android/settings/ISActivity;->code:I
    invoke-static {v0}, Lcom/android/settings/ISActivity;->access$000(Lcom/android/settings/ISActivity;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/settings/ISActivity$1;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v0}, Lcom/android/settings/ISActivity;->finish()V

    goto :goto_0
.end method
