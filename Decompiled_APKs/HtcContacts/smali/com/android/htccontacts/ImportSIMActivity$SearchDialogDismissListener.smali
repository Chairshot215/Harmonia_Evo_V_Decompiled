.class Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;
.super Ljava/lang/Object;
.source "ImportSIMActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportSIMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchDialogDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportSIMActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ImportSIMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ImportSIMActivity;Lcom/android/htccontacts/ImportSIMActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;-><init>(Lcom/android/htccontacts/ImportSIMActivity;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportSIMActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const-string v0, "ImportSIMActivity"

    const-string v1, "Search dialog is dismissed, destroy ImportSIMActivity..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/htccontacts/ImportSIMActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/ImportSIMActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportSIMActivity;->finish()V

    .line 159
    :cond_0
    return-void
.end method
