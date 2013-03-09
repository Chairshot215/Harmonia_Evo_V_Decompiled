.class public Lcom/htc/opensense2/album/util/Utils$Carrier;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Carrier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mMember:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, this:Lcom/htc/opensense2/album/util/Utils$Carrier;,"Lcom/htc/opensense2/album/util/Utils$Carrier<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/htc/opensense2/album/util/Utils$Carrier;->mMember:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, this:Lcom/htc/opensense2/album/util/Utils$Carrier;,"Lcom/htc/opensense2/album/util/Utils$Carrier<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/util/Utils$Carrier;->mMember:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lcom/htc/opensense2/album/util/Utils$Carrier;,"Lcom/htc/opensense2/album/util/Utils$Carrier<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/htc/opensense2/album/util/Utils$Carrier;->mMember:Ljava/lang/Object;

    .line 21
    return-void
.end method
