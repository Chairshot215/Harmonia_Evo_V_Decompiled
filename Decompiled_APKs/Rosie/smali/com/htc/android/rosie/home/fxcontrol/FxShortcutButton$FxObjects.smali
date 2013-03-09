.class final Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;
.super Ljava/lang/Object;
.source "FxShortcutButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FxObjects"
.end annotation


# instance fields
.field private final button:Lcom/htc/fusion/fx/controls/FxButton;

.field private final drop:Lcom/htc/fusion/fx/controls/FxDropControl;

.field private final hitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private final icon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private final label:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private final thumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/fx/controls/FxDynamicImage;",
            ">;"
        }
    .end annotation
.end field

.field private final timeline:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method private constructor <init>(Lcom/htc/fusion/fx/controls/FxButton;Lcom/htc/fusion/fx/controls/FxDynamicImage;Lcom/htc/fusion/fx/controls/FxTextLabel;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/fusion/fx/controls/FxHitbox;Ljava/util/ArrayList;Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 0
    .parameter "button"
    .parameter "icon"
    .parameter "label"
    .parameter "drop"
    .parameter "hitbox"
    .parameter
    .parameter "timeline"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/controls/FxButton;",
            "Lcom/htc/fusion/fx/controls/FxDynamicImage;",
            "Lcom/htc/fusion/fx/controls/FxTextLabel;",
            "Lcom/htc/fusion/fx/controls/FxDropControl;",
            "Lcom/htc/fusion/fx/controls/FxHitbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/fx/controls/FxDynamicImage;",
            ">;",
            "Lcom/htc/fusion/fx/FxTimelineControl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p6, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/fx/controls/FxDynamicImage;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->button:Lcom/htc/fusion/fx/controls/FxButton;

    .line 45
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->icon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 46
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->label:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 47
    iput-object p4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->drop:Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 48
    iput-object p5, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->hitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 49
    iput-object p6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->thumbnails:Ljava/util/ArrayList;

    .line 50
    iput-object p7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->timeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fusion/fx/controls/FxButton;Lcom/htc/fusion/fx/controls/FxDynamicImage;Lcom/htc/fusion/fx/controls/FxTextLabel;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/fusion/fx/controls/FxHitbox;Ljava/util/ArrayList;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;-><init>(Lcom/htc/fusion/fx/controls/FxButton;Lcom/htc/fusion/fx/controls/FxDynamicImage;Lcom/htc/fusion/fx/controls/FxTextLabel;Lcom/htc/fusion/fx/controls/FxDropControl;Lcom/htc/fusion/fx/controls/FxHitbox;Ljava/util/ArrayList;Lcom/htc/fusion/fx/FxTimelineControl;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxDropControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->drop:Lcom/htc/fusion/fx/controls/FxDropControl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->button:Lcom/htc/fusion/fx/controls/FxButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxTextLabel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->label:Lcom/htc/fusion/fx/controls/FxTextLabel;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->icon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxHitbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->hitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->thumbnails:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->timeline:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method
