.class public interface abstract Lcom/android/browser/autocomplete/SuggestedTextController$TextOwner;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/autocomplete/SuggestedTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextOwner"
.end annotation


# virtual methods
.method public abstract addTextChangedListener(Landroid/text/TextWatcher;)V
.end method

.method public abstract getText()Landroid/text/Editable;
.end method

.method public abstract removeTextChangedListener(Landroid/text/TextWatcher;)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method
