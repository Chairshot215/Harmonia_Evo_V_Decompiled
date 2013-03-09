.class public Lcom/htc/text/HtcHtmlToSpannedConverter$Font;
.super Ljava/lang/Object;
.source "HtcHtmlToSpannedConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/text/HtcHtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Font"
.end annotation


# instance fields
.field public mColor:Ljava/lang/String;

.field public mFace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "color"
    .parameter "face"

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;->mColor:Ljava/lang/String;

    .line 464
    iput-object p2, p0, Lcom/htc/text/HtcHtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    .line 465
    return-void
.end method
