.class Lcom/google/common/collect/ImmutableList$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter "elements"

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$SerializedForm;->elements:[Ljava/lang/Object;

    .line 368
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
