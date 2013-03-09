.class Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberPickerInputFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/NumberPicker;Lcom/android/mms/ui/NumberPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 16
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/NumberPicker;->access$900(Lcom/android/mms/ui/NumberPicker;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;
    invoke-static {v2}, Lcom/android/mms/ui/NumberPicker;->access$1000(Lcom/android/mms/ui/NumberPicker;)Landroid/text/InputFilter;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 432
    :cond_0
    :goto_0
    return-object v10

    .line 421
    :cond_1
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 422
    .local v10, filtered:Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v3, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v3

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 425
    .local v13, result:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 426
    .local v14, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/NumberPicker;->access$900(Lcom/android/mms/ui/NumberPicker;)[Ljava/lang/String;

    move-result-object v9

    .local v9, arr$:[Ljava/lang/String;
    array-length v12, v9

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_2

    aget-object v15, v9, v11

    .line 427
    .local v15, val:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 428
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 426
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 432
    .end local v15           #val:Ljava/lang/String;
    :cond_2
    const-string v10, ""

    goto :goto_0
.end method
