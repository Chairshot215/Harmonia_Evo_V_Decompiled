.class public Lcom/htc/fm/HtcListNode;
.super Ljava/lang/Object;
.source "HtcListNode.java"


# instance fields
.field cursor:Landroid/database/Cursor;

.field cursorPosition:I

.field isExpanded:Z

.field isSelected:Z

.field level:I

.field position:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;II)V
    .locals 1
    .parameter "cursor"
    .parameter "cursorPosition"
    .parameter "level"

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/htc/fm/HtcListNode;->isExpanded:Z

    .line 23
    iput-boolean v0, p0, Lcom/htc/fm/HtcListNode;->isSelected:Z

    .line 8
    iput p2, p0, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    .line 9
    iput p3, p0, Lcom/htc/fm/HtcListNode;->level:I

    .line 10
    iput-object p1, p0, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    .line 11
    return-void
.end method
