.class Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;
.super Ljava/lang/Object;
.source "UsageGauge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsageType"
.end annotation


# instance fields
.field subtype:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;->type:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;->subtype:Ljava/lang/String;

    .line 48
    return-void
.end method
