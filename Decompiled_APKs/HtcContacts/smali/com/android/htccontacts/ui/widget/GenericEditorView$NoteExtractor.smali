.class Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;
.super Ljava/lang/Object;
.source "GenericEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/widget/GenericEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteExtractor"
.end annotation


# instance fields
.field public isExtracted:Z

.field private tagString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ui/widget/GenericEditorView;)V
    .locals 1
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->isExtracted:Z

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->tagString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ui/widget/GenericEditorView;Lcom/android/htccontacts/ui/widget/GenericEditorView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;-><init>(Lcom/android/htccontacts/ui/widget/GenericEditorView;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "editText"

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->isExtracted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->tagString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 557
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->tagString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public extract(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {p1, v1}, Lcom/android/htccontacts/util/SNUtils;->extractNoteText(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, result:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->tagString:Ljava/lang/String;

    .line 545
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->tagString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$NoteExtractor;->isExtracted:Z

    .line 546
    return-object v0

    .line 545
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
