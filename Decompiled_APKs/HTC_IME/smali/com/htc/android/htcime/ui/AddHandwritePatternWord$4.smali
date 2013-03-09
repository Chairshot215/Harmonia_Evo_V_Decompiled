.class Lcom/htc/android/htcime/ui/AddHandwritePatternWord$4;
.super Ljava/lang/Object;
.source "AddHandwritePatternWord.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$4;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 13
    .parameter "s"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 182
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    .line 183
    .local v4, len:I
    const/4 v3, 0x0

    .line 185
    .local v3, isHilite:Z
    const-class v9, Ljava/lang/Object;

    invoke-interface {p1, v11, v4, v9}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 186
    .local v8, styles:[Ljava/lang/Object;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v7, v0, v2

    .line 189
    .local v7, style:Ljava/lang/Object;
    instance-of v9, v7, Landroid/text/style/CharacterStyle;

    if-eqz v9, :cond_0

    .line 191
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 192
    .local v6, start:I
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 194
    .local v1, end:I
    const/4 v3, 0x1

    .line 197
    if-nez v6, :cond_1

    move v12, v10

    :goto_1
    if-le v1, v6, :cond_2

    move v9, v10

    :goto_2
    and-int/2addr v9, v12

    if-eqz v9, :cond_3

    .line 198
    new-array v9, v11, [Landroid/text/InputFilter;

    invoke-interface {p1, v9}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 186
    .end local v1           #end:I
    .end local v6           #start:I
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v1       #end:I
    .restart local v6       #start:I
    :cond_1
    move v12, v11

    .line 197
    goto :goto_1

    :cond_2
    move v9, v11

    goto :goto_2

    .line 201
    :cond_3
    if-le v4, v10, :cond_0

    if-lez v6, :cond_0

    if-lez v1, :cond_0

    .line 204
    invoke-interface {p1, v10, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 205
    new-array v9, v10, [Landroid/text/InputFilter;

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v12, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v9, v11

    invoke-interface {p1, v9}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_3

    .line 210
    .end local v1           #end:I
    .end local v6           #start:I
    .end local v7           #style:Ljava/lang/Object;
    :cond_4
    if-le v4, v10, :cond_5

    if-nez v3, :cond_5

    .line 211
    invoke-interface {p1, v10, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 212
    new-array v9, v10, [Landroid/text/InputFilter;

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v12, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v9, v11

    invoke-interface {p1, v9}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 215
    :cond_5
    if-lt v4, v10, :cond_6

    .line 216
    iget-object v9, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$4;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    #calls: Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->setLeftCmdBarBtnEnabled(Z)V
    invoke-static {v9, v10}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->access$200(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;Z)V

    .line 219
    :goto_4
    return-void

    .line 218
    :cond_6
    iget-object v9, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$4;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    #calls: Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->setLeftCmdBarBtnEnabled(Z)V
    invoke-static {v9, v11}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->access$300(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;Z)V

    goto :goto_4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 220
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 221
    return-void
.end method
