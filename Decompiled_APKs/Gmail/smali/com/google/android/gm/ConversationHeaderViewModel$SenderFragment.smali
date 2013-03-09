.class Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;
.super Ljava/lang/Object;
.source "ConversationHeaderViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationHeaderViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SenderFragment"
.end annotation


# instance fields
.field ellipsizedText:Ljava/lang/String;

.field end:I

.field isFixed:Z

.field shouldDisplay:Z

.field start:I

.field style:Landroid/text/style/CharacterStyle;

.field width:I


# direct methods
.method constructor <init>(IILjava/lang/CharSequence;Landroid/text/style/CharacterStyle;Z)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "sendersText"
    .parameter "style"
    .parameter "isFixed"

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput p1, p0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->start:I

    .line 288
    iput p2, p0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->end:I

    .line 289
    iput-object p4, p0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    .line 290
    iput-boolean p5, p0, Lcom/google/android/gm/ConversationHeaderViewModel$SenderFragment;->isFixed:Z

    .line 291
    return-void
.end method
