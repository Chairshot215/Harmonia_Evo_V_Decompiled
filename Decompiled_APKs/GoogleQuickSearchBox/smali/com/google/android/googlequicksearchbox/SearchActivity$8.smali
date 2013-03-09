.class Lcom/google/android/googlequicksearchbox/SearchActivity$8;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SearchActivity;->showFirstRunDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$8;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$8;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->firstRunDialogNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "QSB.SearchActivity"

    const-string v1, "First run dialog cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$8;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->finish()V

    .line 429
    :cond_0
    return-void
.end method
