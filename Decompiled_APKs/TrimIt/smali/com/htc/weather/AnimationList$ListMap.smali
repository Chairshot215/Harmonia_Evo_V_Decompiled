.class Lcom/htc/weather/AnimationList$ListMap;
.super Ljava/lang/Object;
.source "AnimationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/AnimationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListMap"
.end annotation


# instance fields
.field link_:Ljava/lang/String;

.field name_:Ljava/lang/String;

.field path_:Ljava/lang/String;

.field resid_:I

.field template_:Z

.field final synthetic this$0:Lcom/htc/weather/AnimationList;


# direct methods
.method constructor <init>(Lcom/htc/weather/AnimationList;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/weather/AnimationList$ListMap;->this$0:Lcom/htc/weather/AnimationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
