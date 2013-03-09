.class public Lcom/android/camera/ResolutionMenuItem;
.super Ljava/lang/Object;
.source "ResolutionMenuItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/camera/ResolutionMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field public resIconId:I

.field public resStringId:I

.field public resolution:Lcom/android/camera/Resolution;


# direct methods
.method public constructor <init>(Lcom/android/camera/Resolution;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    iput v0, p0, Lcom/android/camera/ResolutionMenuItem;->resIconId:I

    iput-object p1, p0, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    iput p2, p0, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/ResolutionMenuItem;)I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    iget-object v1, p1, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Lcom/android/camera/Resolution;->compareTo(Lcom/android/camera/Resolution;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/ResolutionMenuItem;->compareTo(Lcom/android/camera/ResolutionMenuItem;)I

    move-result v0

    return v0
.end method
