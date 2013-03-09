.class Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;
.super Ljava/lang/Object;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ExportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ExportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ExportVCardActivity;Lcom/android/htccontacts/ExportVCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;-><init>(Lcom/android/htccontacts/ExportVCardActivity;)V

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

    .line 127
    const/16 v1, 0x54

    if-ne p2, v1, :cond_0

    .line 128
    const-string v1, "ExportVCardActivity"

    const-string v2, "SearchKey is pressed..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/htccontacts/ExportVCardActivity$SearchKeyListener;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v1, v3, v0, v3, v0}, Lcom/android/htccontacts/ExportVCardActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 130
    const/4 v0, 0x1

    .line 132
    :cond_0
    return v0
.end method
