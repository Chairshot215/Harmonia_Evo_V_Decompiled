.class Lcom/android/mms/ui/NumberPicker$NumberRangeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberRangeKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$NumberRangeKeyListener;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/NumberPicker;Lcom/android/mms/ui/NumberPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker$NumberRangeKeyListener;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 453
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 454
    .local v0, filtered:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 455
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 458
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p4, v4, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {p4, p6, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, result:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 465
    .restart local v1       #result:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/NumberPicker$NumberRangeKeyListener;->this$0:Lcom/android/mms/ui/NumberPicker;

    #calls: Lcom/android/mms/ui/NumberPicker;->getSelectedPos(Ljava/lang/String;)I
    invoke-static {v3, v1}, Lcom/android/mms/ui/NumberPicker;->access$1200(Lcom/android/mms/ui/NumberPicker;Ljava/lang/String;)I

    move-result v2

    .local v2, val:I
    move-object v1, v0

    .line 475
    goto :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 446
    invoke-static {}, Lcom/android/mms/ui/NumberPicker;->access$1100()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x2

    return v0
.end method
