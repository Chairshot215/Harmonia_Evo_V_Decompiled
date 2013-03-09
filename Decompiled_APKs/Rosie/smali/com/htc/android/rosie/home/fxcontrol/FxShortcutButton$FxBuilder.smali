.class final Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
.super Ljava/lang/Object;
.source "FxShortcutButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FxBuilder"
.end annotation


# instance fields
.field private mButton:Lcom/htc/fusion/fx/controls/FxButton;

.field private mDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

.field private mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mThumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/fx/controls/FxDynamicImage;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailsTimeline:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setTextLabelVisibility(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxDynamicImage;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setIcon(Lcom/htc/fusion/fx/controls/FxDynamicImage;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxTextLabel;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setLabel(Lcom/htc/fusion/fx/controls/FxTextLabel;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxButton;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setButton(Lcom/htc/fusion/fx/controls/FxButton;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxDropControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setDrop(Lcom/htc/fusion/fx/controls/FxDropControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxHitbox;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setHitbox(Lcom/htc/fusion/fx/controls/FxHitbox;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Ljava/util/ArrayList;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setThumbnails(Ljava/util/ArrayList;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setThumbnailsTimeline(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->build()Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    move-result-object v0

    return-object v0
.end method

.method private build()Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;
    .locals 9

    .prologue
    .line 68
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mThumbnails:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mThumbnailsTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;-><init>(Lcom/htc/fusion/fx/controls/FxButton;Lcom/htc/fusion/fx/controls/FxDynamicImage;Lcom/htc/fusion/fx/controls/FxTextLabel;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/fusion/fx/controls/FxHitbox;Ljava/util/ArrayList;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$1;)V

    return-object v0
.end method

.method private setButton(Lcom/htc/fusion/fx/controls/FxButton;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 0
    .parameter "button"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    return-object p0
.end method

.method private setDrop(Lcom/htc/fusion/fx/controls/FxDropControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 0
    .parameter "drop"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    return-object p0
.end method

.method private setHitbox(Lcom/htc/fusion/fx/controls/FxHitbox;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 0
    .parameter "hitbox"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    return-object p0
.end method

.method private setIcon(Lcom/htc/fusion/fx/controls/FxDynamicImage;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 0
    .parameter "icon"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    return-object p0
.end method

.method private setLabel(Lcom/htc/fusion/fx/controls/FxTextLabel;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 0
    .parameter "label"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    return-object p0
.end method

.method private setTextLabelVisibility(Z)V
    .locals 1
    .parameter "bVisibility"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 73
    return-void
.end method

.method private setThumbnails(Ljava/util/ArrayList;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/fx/controls/FxDynamicImage;",
            ">;)",
            "Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/fx/controls/FxDynamicImage;>;"
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mThumbnails:Ljava/util/ArrayList;

    return-object p0
.end method

.method private setThumbnailsTimeline(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    .locals 0
    .parameter "timeline"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->mThumbnailsTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object p0
.end method
