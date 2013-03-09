.class public Lcom/android/htccontacts/ui/widget/EditorMonitor;
.super Ljava/lang/Object;
.source "EditorMonitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorDeleted(Ljava/lang/String;J)V
    .locals 0
    .parameter "mimetype"
    .parameter "dataId"

    .prologue
    .line 10
    return-void
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mimetype"
    .parameter "column"
    .parameter "value"

    .prologue
    .line 9
    return-void
.end method

.method public onTextWatchChanged(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/text/Editable;)V
    .locals 0
    .parameter "mimetype"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 11
    return-void
.end method
