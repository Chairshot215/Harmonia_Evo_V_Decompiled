.class Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;
.super Ljava/lang/Object;
.source "ContactSlot.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup$ShowListener;


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
    .line 302
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupWillShow(Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;)V
    .locals 3
    .parameter "popup"

    .prologue
    .line 305
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->getSelectionEnd()I

    move-result v0

    .line 306
    .local v0, offset:I
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    invoke-static {v2, v0, v0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->getTextSelectionPopupPoint(Landroid/widget/TextView;II)Landroid/graphics/Point;

    move-result-object v1

    .line 308
    .local v1, point:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSlot$2;->this$0:Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    #getter for: Lcom/google/android/voicesearch/actioneditor/ContactSlot;->mAutoCompletePopup:Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;
    invoke-static {v2}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->access$000(Lcom/google/android/voicesearch/actioneditor/ContactSlot;)Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/voicesearch/actioneditor/ContactsAutoCompletePopup;->moveCompleting(Landroid/graphics/Point;)V

    .line 309
    return-void
.end method
