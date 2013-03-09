.class Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;)V

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

    .line 212
    const/16 v1, 0x54

    if-ne p2, v1, :cond_0

    .line 213
    const-string v1, "ImportVCardActivity"

    const-string v2, "SearchKey is pressed..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v1, v3, v0, v3, v0}, Lcom/android/htccontacts/ImportVCardActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 215
    const/4 v0, 0x1

    .line 217
    :cond_0
    return v0
.end method
