.class Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;
.super Ljava/lang/Object;
.source "MoveContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/MoveContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/MoveContactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/MoveContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/MoveContactsActivity;Lcom/android/htccontacts/MoveContactsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;-><init>(Lcom/android/htccontacts/MoveContactsActivity;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 138
    const/16 v1, 0x54

    if-ne p2, v1, :cond_0

    .line 139
    const-string v1, "MoveContactsActivity"

    const-string v2, "SearchKey is pressed..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/android/htccontacts/MoveContactsActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v1, v3, v0, v3, v0}, Lcom/android/htccontacts/MoveContactsActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 141
    const/4 v0, 0x1

    .line 143
    :cond_0
    return v0
.end method
