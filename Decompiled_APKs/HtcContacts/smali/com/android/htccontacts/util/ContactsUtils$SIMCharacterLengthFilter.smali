.class public Lcom/android/htccontacts/util/ContactsUtils$SIMCharacterLengthFilter;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMCharacterLengthFilter"
.end annotation


# instance fields
.field private mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 3072
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3073
    iput p1, p0, Lcom/android/htccontacts/util/ContactsUtils$SIMCharacterLengthFilter;->mMax:I

    .line 3074
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 3079
    const/4 v8, 0x0

    .line 3080
    .local v8, result:Ljava/lang/CharSequence;
    const-string v9, "ContactsUtils"

    const-string v10, "-----------"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    const-string v9, "  source: %s %d %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3082
    .local v6, log1:Ljava/lang/String;
    const-string v9, "  dest: %s %d %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3083
    .local v7, log2:Ljava/lang/String;
    const-string v9, "ContactsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MAX_LEN_KEEP: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/htccontacts/util/ContactsUtils$SIMCharacterLengthFilter;->mMax:I

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v12

    sub-int v13, p6, p5

    sub-int/2addr v12, v13

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    const-string v9, "ContactsUtils"

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    const-string v9, "ContactsUtils"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v2

    .line 3091
    .local v2, editable:Landroid/text/Editable;
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 3092
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 3098
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/htccontacts/util/ContactsUtils;->caculateSIMOCTET(Ljava/lang/String;)I
    invoke-static {v9}, Lcom/android/htccontacts/util/ContactsUtils;->access$200(Ljava/lang/String;)I

    move-result v3

    .line 3099
    .local v3, finalLen:I
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/htccontacts/util/ContactsUtils;->isContainDoubleByteChars(Ljava/lang/String;)I
    invoke-static {v9}, Lcom/android/htccontacts/util/ContactsUtils;->access$300(Ljava/lang/String;)I

    move-result v4

    .line 3100
    .local v4, index:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_3

    .line 3101
    iget v9, p0, Lcom/android/htccontacts/util/ContactsUtils$SIMCharacterLengthFilter;->mMax:I

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v10

    sub-int v11, p6, p5

    sub-int/2addr v10, v11

    sub-int v5, v9, v10

    .line 3103
    .local v5, keep:I
    if-gtz v5, :cond_1

    .line 3104
    const-string v8, ""

    :goto_1
    move-object v9, v8

    .line 3124
    .end local v5           #keep:I
    :goto_2
    return-object v9

    .line 3095
    .end local v3           #finalLen:I
    .end local v4           #index:I
    :cond_0
    invoke-interface {v2, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 3105
    .restart local v3       #finalLen:I
    .restart local v4       #index:I
    .restart local v5       #keep:I
    :cond_1
    sub-int v9, p3, p2

    if-lt v5, v9, :cond_2

    .line 3106
    const/4 v8, 0x0

    goto :goto_1

    .line 3108
    :cond_2
    add-int v9, p2, v5

    move/from16 v0, p2

    invoke-interface {p1, v0, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_1

    .line 3114
    .end local v5           #keep:I
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_4

    move/from16 v0, p5

    move/from16 v1, p6

    if-ge v0, v1, :cond_4

    .line 3115
    iget v9, p0, Lcom/android/htccontacts/util/ContactsUtils$SIMCharacterLengthFilter;->mMax:I

    if-lt v9, v3, :cond_5

    .line 3116
    const-string v9, ""

    goto :goto_2

    .line 3120
    :cond_4
    iget v9, p0, Lcom/android/htccontacts/util/ContactsUtils$SIMCharacterLengthFilter;->mMax:I

    if-lt v9, v3, :cond_5

    .line 3121
    const/4 v9, 0x0

    goto :goto_2

    .line 3124
    :cond_5
    const-string v9, ""

    goto :goto_2
.end method
