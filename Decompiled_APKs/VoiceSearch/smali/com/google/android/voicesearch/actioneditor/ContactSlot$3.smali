.class Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;
.super Ljava/lang/Object;
.source "ContactSlot.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/ContactSlot;->startAutoCompleting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;I)V
    .locals 8
    .parameter "view"
    .parameter "which"

    .prologue
    .line 315
    iget-object v6, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v6}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    .line 316
    .local v5, text:Landroid/text/Editable;
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;

    .line 317
    .local v0, adapter:Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;
    invoke-virtual {v0, p2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$ContactsAdapter;->getContactAtIndex(I)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v1

    .line 318
    .local v1, contact:Lcom/google/android/voicesearch/actions/Contact;
    iget-object v6, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    #calls: Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getCurrentContact()Lcom/google/android/voicesearch/actioneditor/ContactSpan;
    invoke-static {v6}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->access$100(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)Lcom/google/android/voicesearch/actioneditor/ContactSpan;

    move-result-object v3

    .line 319
    .local v3, span:Lcom/google/android/voicesearch/actioneditor/ContactSpan;
    if-nez v3, :cond_0

    .line 328
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-interface {v5, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 323
    .local v4, start:I
    invoke-interface {v5, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 325
    .local v2, end:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/Contact;->toAddressString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 326
    iget-object v6, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v6}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->formatContactsList()V

    .line 327
    iget-object v6, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$3;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v6}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->refreshAppearance()V

    goto :goto_0
.end method
