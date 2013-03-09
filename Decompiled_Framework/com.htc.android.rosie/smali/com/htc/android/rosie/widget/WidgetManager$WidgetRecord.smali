.class final Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/WidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WidgetRecord"
.end annotation


# instance fields
.field private final host:Lcom/htc/android/rosie/widget/Widget$Host;

.field public final id:I

.field private mNeedsRestart:Z

.field private mPaused:Z

.field private mSavedState:Landroid/os/Bundle;

.field private mStopped:Z

.field private widget:Lcom/htc/android/rosie/widget/Widget;


# direct methods
.method private constructor <init>(ILcom/htc/android/rosie/widget/Widget;Lcom/htc/android/rosie/widget/Widget$Host;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mPaused:Z

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mNeedsRestart:Z

    iput p1, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->id:I

    iput-object p2, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;

    iput-object p3, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->host:Lcom/htc/android/rosie/widget/Widget$Host;

    return-void
.end method

.method synthetic constructor <init>(ILcom/htc/android/rosie/widget/Widget;Lcom/htc/android/rosie/widget/Widget$Host;Lcom/htc/android/rosie/widget/WidgetManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;-><init>(ILcom/htc/android/rosie/widget/Widget;Lcom/htc/android/rosie/widget/Widget$Host;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mSavedState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mSavedState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Lcom/htc/android/rosie/widget/Widget;)Lcom/htc/android/rosie/widget/Widget;
    .locals 0

    iput-object p1, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->widget:Lcom/htc/android/rosie/widget/Widget;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->host:Lcom/htc/android/rosie/widget/Widget$Host;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mPaused:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mPaused:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mStopped:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mNeedsRestart:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/android/rosie/widget/WidgetManager$WidgetRecord;->mNeedsRestart:Z

    return p1
.end method
