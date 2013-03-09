.class Lcom/htc/Weather/widget/CityListPanel$CityDataItem;
.super Ljava/lang/Object;
.source "CityListPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/CityListPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CityDataItem"
.end annotation


# instance fields
.field cityname:Ljava/lang/String;

.field condition:Ljava/lang/String;

.field conditionIcon:I

.field currtemp:Ljava/lang/String;

.field tempH:Ljava/lang/String;

.field tempL:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/Weather/widget/CityListPanel;


# direct methods
.method constructor <init>(Lcom/htc/Weather/widget/CityListPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
