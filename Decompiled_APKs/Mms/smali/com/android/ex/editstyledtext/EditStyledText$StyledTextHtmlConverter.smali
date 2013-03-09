.class public interface abstract Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StyledTextHtmlConverter"
.end annotation


# virtual methods
.method public abstract fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
.end method

.method public abstract fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
.end method

.method public abstract toHtml(Landroid/text/Spanned;)Ljava/lang/String;
.end method

.method public abstract toHtml(Landroid/text/Spanned;Z)Ljava/lang/String;
.end method

.method public abstract toHtml(Landroid/text/Spanned;ZIF)Ljava/lang/String;
.end method
