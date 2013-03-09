.class Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView;
.super Landroid/widget/ListView;
.source "ErrorConsoleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ErrorConsoleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorConsoleListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;
    }
.end annotation


# instance fields
.field private mConsoleMessages:Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 216
    new-instance v0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;

    invoke-direct {v0, p1}, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView;->mConsoleMessages:Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;

    .line 217
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView;->mConsoleMessages:Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;

    invoke-virtual {p0, v0}, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    return-void
.end method


# virtual methods
.method public addErrorMessage(Landroid/webkit/ConsoleMessage;)V
    .locals 1
    .parameter "consoleMessage"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView;->mConsoleMessages:Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;

    invoke-virtual {v0, p1}, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->add(Landroid/webkit/ConsoleMessage;)V

    .line 222
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView;->mConsoleMessages:Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;

    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView;->setSelection(I)V

    .line 223
    return-void
.end method

.method public clearErrorMessages()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView;->mConsoleMessages:Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;

    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->clear()V

    .line 227
    return-void
.end method
