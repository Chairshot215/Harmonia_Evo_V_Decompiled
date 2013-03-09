.class public Lcom/htc/widget3d/weather/data/City$Condition;
.super Ljava/lang/Object;
.source "City.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/data/City;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Condition"
.end annotation


# instance fields
.field private days:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget3d/weather/data/DayForecast;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/widget3d/weather/data/City;


# direct methods
.method public constructor <init>(Lcom/htc/widget3d/weather/data/City;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/widget3d/weather/data/City$Condition;->this$0:Lcom/htc/widget3d/weather/data/City;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget3d/weather/data/City$Condition;->days:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/City$Condition;->reset()V

    .line 67
    return-void
.end method


# virtual methods
.method public add(Lcom/htc/widget3d/weather/data/DayForecast;)V
    .locals 1
    .parameter "forecast"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/City$Condition;->days:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public get(I)Lcom/htc/widget3d/weather/data/DayForecast;
    .locals 2
    .parameter "index"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/City$Condition;->size()I

    move-result v0

    .line 76
    .local v0, size:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/htc/widget3d/weather/data/City$Condition;->days:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget3d/weather/data/DayForecast;

    .line 79
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/City$Condition;->days:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/widget3d/weather/data/City$Condition;->days:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public today()Lcom/htc/widget3d/weather/data/DayForecast;
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/data/City$Condition;->size()I

    move-result v0

    .line 84
    .local v0, size:I
    if-nez v0, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 93
    :goto_0
    return-object v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/data/City$Condition;->this$0:Lcom/htc/widget3d/weather/data/City;

    iget v1, v1, Lcom/htc/widget3d/weather/data/City;->todayIndex:I

    if-gez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/htc/widget3d/weather/data/City$Condition;->this$0:Lcom/htc/widget3d/weather/data/City;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/widget3d/weather/data/City;->todayIndex:I

    .line 92
    :cond_1
    :goto_1
    const-string v1, "City"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "today index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget3d/weather/data/City$Condition;->this$0:Lcom/htc/widget3d/weather/data/City;

    iget v3, v3, Lcom/htc/widget3d/weather/data/City;->todayIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/htc/widget3d/weather/data/City$Condition;->days:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/widget3d/weather/data/City$Condition;->this$0:Lcom/htc/widget3d/weather/data/City;

    iget v2, v2, Lcom/htc/widget3d/weather/data/City;->todayIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget3d/weather/data/DayForecast;

    goto :goto_0

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/htc/widget3d/weather/data/City$Condition;->this$0:Lcom/htc/widget3d/weather/data/City;

    iget v1, v1, Lcom/htc/widget3d/weather/data/City;->todayIndex:I

    if-lt v1, v0, :cond_1

    .line 90
    iget-object v1, p0, Lcom/htc/widget3d/weather/data/City$Condition;->this$0:Lcom/htc/widget3d/weather/data/City;

    add-int/lit8 v2, v0, -0x1

    iput v2, v1, Lcom/htc/widget3d/weather/data/City;->todayIndex:I

    goto :goto_1
.end method
