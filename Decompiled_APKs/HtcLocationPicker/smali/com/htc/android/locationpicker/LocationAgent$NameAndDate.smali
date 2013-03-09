.class Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;
.super Ljava/lang/Object;
.source "LocationAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/LocationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameAndDate"
.end annotation


# instance fields
.field public date:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 460
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;->name:Ljava/lang/String;

    .line 462
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;->date:J

    .line 463
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "target"

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/android/locationpicker/LocationAgent$NameAndDate;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
