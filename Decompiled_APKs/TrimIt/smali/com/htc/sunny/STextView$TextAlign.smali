.class public Lcom/htc/sunny/STextView$TextAlign;
.super Ljava/lang/Object;
.source "STextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/STextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextAlign"
.end annotation


# static fields
.field public static final BOTTOM:I = 0x10

.field public static final CENTER_HORIZONTAL:I = 0x1004

.field public static final CENTER_VERTICAL:I = 0x20

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny/STextView;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/sunny/STextView$TextAlign;->this$0:Lcom/htc/sunny/STextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
