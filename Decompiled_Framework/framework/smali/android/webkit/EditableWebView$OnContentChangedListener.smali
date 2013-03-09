.class public interface abstract Landroid/webkit/EditableWebView$OnContentChangedListener;
.super Ljava/lang/Object;
.source "EditableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnContentChangedListener"
.end annotation


# static fields
.field public static final REASON_COMPOSING_TEXT:I = 0x1f6

.field public static final REASON_DELETE_TEXT:I = 0x1f7

.field public static final REASON_INSERT_END:I = 0x220

.field public static final REASON_INSERT_HTML_ANCHOR_SPAN:I = 0x224

.field public static final REASON_INSERT_IMAGE:I = 0x1fe

.field public static final REASON_INSERT_TEXT:I = 0x1f5

.field public static final REASON_KEY_DOWN:I = 0x67

.field public static final REASON_KEY_UP:I = 0x68


# virtual methods
.method public abstract onContentChanged(Landroid/webkit/WebView;I)V
.end method
