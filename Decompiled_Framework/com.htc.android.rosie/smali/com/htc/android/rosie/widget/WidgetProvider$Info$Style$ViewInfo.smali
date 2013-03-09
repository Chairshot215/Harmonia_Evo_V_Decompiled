.class public final Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;
.super Ljava/lang/Object;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewInfo"
.end annotation


# instance fields
.field public final scene:Ljava/lang/String;

.field public final sx:I

.field public final sy:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sx:I

    iput p2, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sy:I

    iput-object p3, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sx:I

    iput v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sx:I

    iget v0, p1, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sy:I

    iput v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sy:I

    iget-object v0, p1, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    goto :goto_0
.end method
