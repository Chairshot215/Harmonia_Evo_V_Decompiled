.class Lcom/htc/Weather/AddCity$IndexHolder;
.super Ljava/lang/Object;
.source "AddCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/AddCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexHolder"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/htc/Weather/AddCity;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/AddCity;I)V
    .locals 1
    .parameter
    .parameter "o"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/Weather/AddCity$IndexHolder;->this$0:Lcom/htc/Weather/AddCity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/Weather/AddCity$IndexHolder;->index:I

    .line 147
    iput p2, p0, Lcom/htc/Weather/AddCity$IndexHolder;->index:I

    .line 148
    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/htc/Weather/AddCity$IndexHolder;->index:I

    return v0
.end method

.method public set(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 150
    iput p1, p0, Lcom/htc/Weather/AddCity$IndexHolder;->index:I

    .line 151
    return-void
.end method
