.class public Lcom/scalado/caps/hdrimage/HDRImage$Options;
.super Ljava/lang/Object;
.source "HDRImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/hdrimage/HDRImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public exposure:F

.field public gamma:F

.field public registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;


# direct methods
.method public constructor <init>(FFLcom/scalado/caps/hdrimage/HDRImage$Registration;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->exposure:F

    iput p2, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    iput-object p3, p0, Lcom/scalado/caps/hdrimage/HDRImage$Options;->registration:Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    return-void
.end method
