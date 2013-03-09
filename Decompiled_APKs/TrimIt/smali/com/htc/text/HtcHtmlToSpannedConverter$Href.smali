.class public Lcom/htc/text/HtcHtmlToSpannedConverter$Href;
.super Ljava/lang/Object;
.source "HtcHtmlToSpannedConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/text/HtcHtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Href"
.end annotation


# instance fields
.field public mHref:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "href"

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object p1, p0, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    .line 473
    return-void
.end method
