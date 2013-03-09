.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyledTextConverter"
.end annotation


# instance fields
.field private mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field private mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;)V
    .locals 0
    .parameter
    .parameter "est"
    .parameter "html"

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1871
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 1872
    iput-object p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

    .line 1873
    return-void
.end method

.method static synthetic access$1200(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    return-object v0
.end method


# virtual methods
.method public SetHtml(Ljava/lang/String;)V
    .locals 4
    .parameter "html"

    .prologue
    .line 1926
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;

    invoke-direct {v2, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)V

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    .line 1971
    .local v0, spanned:Landroid/text/Spanned;
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setText(Ljava/lang/CharSequence;)V

    .line 1972
    return-void
.end method

.method public getHtml(Z)Ljava/lang/String;
    .locals 4
    .parameter "escapeFlag"

    .prologue
    .line 1880
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->clearComposingText()V

    .line 1881
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->onRefreshZeoWidthChar()V
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$1000(Lcom/android/ex/editstyledtext/EditStyledText;)V

    .line 1882
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;->toHtml(Landroid/text/Spanned;Z)Ljava/lang/String;

    move-result-object v0

    .line 1884
    .local v0, htmlBody:Ljava/lang/String;
    const-string v1, "EditStyledText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- getHtml:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    return-object v0
.end method

.method public getPreviewHtml()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1890
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->clearComposingText()V

    .line 1891
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->onRefreshZeoWidthChar()V
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$1000(Lcom/android/ex/editstyledtext/EditStyledText;)V

    .line 1892
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->getMaxImageWidthDip()I
    invoke-static {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->access$500(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v4

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->getPaddingScale()F
    invoke-static {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->access$1100(Lcom/android/ex/editstyledtext/EditStyledText;)F

    move-result v5

    invoke-interface {v2, v3, v6, v4, v5}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;->toHtml(Landroid/text/Spanned;ZIF)Ljava/lang/String;

    move-result-object v1

    .line 1895
    .local v1, html:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v0

    .line 1896
    .local v0, bgColor:I
    const-string v2, "<body bgcolor=\"#%02X%02X%02X\">%s</body>"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1901
    const-string v2, "EditStyledText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- getPreviewHtml:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    return-object v1
.end method

.method public getUriArray(Ljava/util/ArrayList;Landroid/text/Editable;)V
    .locals 8
    .parameter
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/text/Editable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1907
    .local p1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1909
    const-string v5, "EditStyledText"

    const-string v6, "--- getUriArray:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1913
    .local v3, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1914
    const-class v5, Landroid/text/style/ImageSpan;

    invoke-interface {p2, v0, v3, v5}, Landroid/text/Editable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 1915
    .local v4, next:I
    const-class v5, Landroid/text/style/ImageSpan;

    invoke-interface {p2, v0, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ImageSpan;

    .line 1916
    .local v1, images:[Landroid/text/style/ImageSpan;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 1918
    const-string v5, "EditStyledText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- getUriArray: foundArray"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v7}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1916
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1913
    :cond_0
    move v0, v4

    goto :goto_0

    .line 1923
    .end local v1           #images:[Landroid/text/style/ImageSpan;
    .end local v2           #j:I
    .end local v4           #next:I
    :cond_1
    return-void
.end method

.method public setStyledTextHtmlConverter(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;)V
    .locals 0
    .parameter "html"

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

    .line 1877
    return-void
.end method
