.class public Lcom/htc/Weather/data/City$Condition;
.super Ljava/lang/Object;
.source "City.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/data/City;
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
            "Lcom/htc/Weather/data/DayForecast;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/Weather/data/City;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/data/City;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/Weather/data/City$Condition;->this$0:Lcom/htc/Weather/data/City;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/Weather/data/City$Condition;->days:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0}, Lcom/htc/Weather/data/City$Condition;->reset()V

    .line 70
    return-void
.end method


# virtual methods
.method public add(Lcom/htc/Weather/data/DayForecast;)V
    .locals 1
    .parameter "forecast"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/Weather/data/City$Condition;->days:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public get(I)Lcom/htc/Weather/data/DayForecast;
    .locals 2
    .parameter "index"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/Weather/data/City$Condition;->size()I

    move-result v0

    .line 79
    .local v0, size:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/htc/Weather/data/City$Condition;->days:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/data/DayForecast;

    .line 82
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/Weather/data/City$Condition;->days:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/Weather/data/City$Condition;->days:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public today()Lcom/htc/Weather/data/DayForecast;
    .locals 5

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/Weather/data/City$Condition;->size()I

    move-result v1

    .line 87
    .local v1, size:I
    if-nez v1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/htc/Weather/data/City$Condition;->this$0:Lcom/htc/Weather/data/City;

    iget v2, v2, Lcom/htc/Weather/data/City;->todayIndex:I

    if-gez v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/htc/Weather/data/City$Condition;->this$0:Lcom/htc/Weather/data/City;

    const/4 v3, 0x0

    iput v3, v2, Lcom/htc/Weather/data/City;->todayIndex:I

    .line 95
    :cond_1
    :goto_1
    const-string v2, "City"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "today index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/Weather/data/City$Condition;->this$0:Lcom/htc/Weather/data/City;

    iget v4, v4, Lcom/htc/Weather/data/City;->todayIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/htc/Weather/data/City$Condition;->days:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/Weather/data/City$Condition;->this$0:Lcom/htc/Weather/data/City;

    iget v3, v3, Lcom/htc/Weather/data/City;->todayIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/data/DayForecast;

    .line 97
    .local v0, f:Lcom/htc/Weather/data/DayForecast;
    iget-object v2, p0, Lcom/htc/Weather/data/City$Condition;->this$0:Lcom/htc/Weather/data/City;

    iget v2, v2, Lcom/htc/Weather/data/City;->todayIndex:I

    iput v2, v0, Lcom/htc/Weather/data/DayForecast;->fstDayIndex:I

    goto :goto_0

    .line 92
    .end local v0           #f:Lcom/htc/Weather/data/DayForecast;
    :cond_2
    iget-object v2, p0, Lcom/htc/Weather/data/City$Condition;->this$0:Lcom/htc/Weather/data/City;

    iget v2, v2, Lcom/htc/Weather/data/City;->todayIndex:I

    if-lt v2, v1, :cond_1

    .line 93
    iget-object v2, p0, Lcom/htc/Weather/data/City$Condition;->this$0:Lcom/htc/Weather/data/City;

    add-int/lit8 v3, v1, -0x1

    iput v3, v2, Lcom/htc/Weather/data/City;->todayIndex:I

    goto :goto_1
.end method
