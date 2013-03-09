.class public Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;
.super Lcom/htc/launcher/FxItem;
.source "FxShortcutButton.java"

# interfaces
.implements Lcom/htc/launcher/FxShortcutInfo$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;,
        Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;,
        Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;,
        Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;,
        Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;,
        Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;
    }
.end annotation


# static fields
.field private static final CONTROLS_FX_FOLDER_NAMES:[Ljava/lang/String; = null

.field private static final CONTROLS_FX_NAMES:[Ljava/lang/String; = null

.field private static final DRAG_SCOPE:[Ljava/lang/String; = null

.field private static final MARKER_LOAD:Ljava/lang/String; = "loading_to_loaded"

.field private static final MARKER_RESIZE_FOR_NAVBAR_ITEM:Ljava/lang/String; = "navbar_shortcut"

.field public static final MAX_THUMBNAILS:I = 0x4

.field private static final SCENE_FX_FOLDER_NAME:Ljava/lang/String; = "Rosie_folder.m10"

.field private static final SCENE_FX_NAME:Ljava/lang/String; = "Rosie_shortcut.m10"

.field private static final TIMELINE_HIGHLIGHT:Ljava/lang/String; = "timeline.highlight"


# instance fields
.field private mClickListenerLand:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;

.field private mClickListenerPort:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;

.field private mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

.field private mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

.field private final mLongTapEventListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$LongTapParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDropActivateListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDropListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDropOutListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDropOverListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private m_NavbarButtonLongTabListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;

.field private m_OnPlaybackCompletedListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_lastIcons:[Landroid/graphics/drawable/Drawable;

.field private m_nNavbarIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "dy.shortcut"

    aput-object v1, v0, v3

    const-string v1, "textlabel.Shortcut"

    aput-object v1, v0, v4

    const-string v1, "button.shortcut"

    aput-object v1, v0, v2

    const-string v1, "drop.folder"

    aput-object v1, v0, v5

    const-string v1, "hitbox.shortcut"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->CONTROLS_FX_NAMES:[Ljava/lang/String;

    .line 92
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "dy.shortcut"

    aput-object v1, v0, v3

    const-string v1, "textlabel.folder"

    aput-object v1, v0, v4

    const-string v1, "button.folder"

    aput-object v1, v0, v2

    const-string v1, "drop.folder"

    aput-object v1, v0, v5

    const-string v1, "button.folder.hitbox"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "dy.folder_A"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dy.folder_B"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dy.folder_C"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dy.folder_D"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "timeline.folder_apps"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->CONTROLS_FX_FOLDER_NAMES:[Ljava/lang/String;

    .line 94
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "empty"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->DRAG_SCOPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/ItemInfo;I)V
    .locals 3
    .parameter "info"
    .parameter "orientation"

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0, v2, p1}, Lcom/htc/launcher/FxItem;-><init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/launcher/ItemInfo;)V

    .line 56
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_NavbarButtonLongTabListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_nNavbarIndex:I

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_lastIcons:[Landroid/graphics/drawable/Drawable;

    .line 99
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;

    const-string v1, "Port"

    invoke-direct {v0, p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mClickListenerPort:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;

    .line 100
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;

    const-string v1, "Land"

    invoke-direct {v0, p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mClickListenerLand:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;

    .line 102
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropActivateListener:Lcom/htc/fusion/fx/MessageListener;

    .line 103
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropListener:Lcom/htc/fusion/fx/MessageListener;

    .line 104
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    .line 105
    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropOutListener:Lcom/htc/fusion/fx/MessageListener;

    .line 107
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$1;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_OnPlaybackCompletedListener:Lcom/htc/fusion/fx/MessageListener;

    .line 452
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOrientation:I

    .line 464
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$6;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$6;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mLongTapEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 119
    invoke-virtual {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->updateOrientation(I)V

    .line 120
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->loadShortcutScene(Lcom/htc/launcher/ItemInfo;)Lcom/htc/fusion/fx/FxScene;

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/ItemInfo;ILcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;I)V
    .locals 0
    .parameter "info"
    .parameter "orientation"
    .parameter "listenser"
    .parameter "id"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;-><init>(Lcom/htc/launcher/ItemInfo;I)V

    .line 126
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_NavbarButtonLongTabListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;

    .line 127
    iput p4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_nNavbarIndex:I

    .line 128
    return-void
.end method

.method static synthetic access$1302(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_bCanRearrange:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_bCanRearrange:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_bCanRearrange:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_nNavbarIndex:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_NavbarButtonLongTabListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;

    return-object v0
.end method

.method private bindDropActivateListener()V
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->getFxDropControl()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v0

    .line 238
    .local v0, drop:Lcom/htc/fusion/fx/controls/FxDropControl;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropActivateListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropActivateSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropActivateListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 249
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$2;

    invoke-direct {v1, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$2;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)V

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropActivateListener:Lcom/htc/fusion/fx/MessageListener;

    .line 248
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropActivateSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropActivateListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_0
.end method

.method private bindDropListener()V
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->getFxDropControl()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v0

    .line 253
    .local v0, drop:Lcom/htc/fusion/fx/controls/FxDropControl;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$3;

    invoke-direct {v1, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$3;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)V

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropListener:Lcom/htc/fusion/fx/MessageListener;

    .line 264
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_0
.end method

.method private bindDropOutListener()V
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->getFxDropControl()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v0

    .line 284
    .local v0, drop:Lcom/htc/fusion/fx/controls/FxDropControl;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropOutListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOutSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropOutListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 295
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$5;

    invoke-direct {v1, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$5;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)V

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropOutListener:Lcom/htc/fusion/fx/MessageListener;

    .line 294
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOutSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropOutListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_0
.end method

.method private bindDropOverListener()V
    .locals 3

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->getFxDropControl()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v0

    .line 269
    .local v0, drop:Lcom/htc/fusion/fx/controls/FxDropControl;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOverSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 280
    :goto_0
    return-void

    .line 273
    :cond_0
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$4;

    invoke-direct {v1, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$4;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;)V

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    .line 279
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOverSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOnDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_0
.end method

.method private loadShortcutScene(Lcom/htc/launcher/ItemInfo;)Lcom/htc/fusion/fx/FxScene;
    .locals 14
    .parameter "info"

    .prologue
    const/4 v8, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 133
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$1;)V

    .line 135
    .local v1, fxBuilder:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    iget v6, p1, Lcom/htc/launcher/ItemInfo;->itemType:I

    if-ne v6, v11, :cond_3

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->PORTRAIT:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->get()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Rosie_folder.m10"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v3

    .line 138
    .local v3, scene:Lcom/htc/fusion/fx/FxScene;
    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->CONTROLS_FX_FOLDER_NAMES:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 140
    .local v0, controls:[Lcom/htc/fusion/fx/FxObject;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v5, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/fx/controls/FxDynamicImage;>;"
    const/4 v6, 0x5

    aget-object v6, v0, v6

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v6, 0x6

    aget-object v6, v0, v6

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v6, 0x7

    aget-object v6, v0, v6

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const/16 v6, 0x8

    aget-object v6, v0, v6

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    aget-object v6, v0, v12

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setIcon(Lcom/htc/fusion/fx/controls/FxDynamicImage;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v1, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxDynamicImage;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    aget-object v6, v0, v10

    check-cast v6, Lcom/htc/fusion/fx/controls/FxTextLabel;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setLabel(Lcom/htc/fusion/fx/controls/FxTextLabel;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$300(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxTextLabel;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    aget-object v6, v0, v11

    check-cast v6, Lcom/htc/fusion/fx/controls/FxButton;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setButton(Lcom/htc/fusion/fx/controls/FxButton;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$400(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxButton;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    aget-object v6, v0, v13

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDropControl;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setDrop(Lcom/htc/fusion/fx/controls/FxDropControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$500(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxDropControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    aget-object v6, v0, v8

    check-cast v6, Lcom/htc/fusion/fx/controls/FxHitbox;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setHitbox(Lcom/htc/fusion/fx/controls/FxHitbox;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxHitbox;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v6

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setThumbnails(Ljava/util/ArrayList;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v6, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$700(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Ljava/util/ArrayList;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    const/16 v6, 0x9

    aget-object v6, v0, v6

    check-cast v6, Lcom/htc/fusion/fx/FxTimelineControl;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setThumbnailsTimeline(Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$800(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/FxTimelineControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v6

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->build()Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;
    invoke-static {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$900(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    .line 165
    .end local v5           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fusion/fx/controls/FxDynamicImage;>;"
    :goto_0
    iget-wide v6, p1, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 167
    iget-wide v6, p1, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 168
    const-string v6, "navbar_shortcut"

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v6

    iget v6, v6, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 169
    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setTextLabelVisibility(Z)V
    invoke-static {v1, v12}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Z)V

    .line 172
    :cond_0
    const-string v6, "timeline.highlight"

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 173
    .local v2, highLight:Lcom/htc/fusion/fx/FxTimelineControl;
    const-string v6, "navbar_shortcut"

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v6

    iget v6, v6, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 176
    .end local v2           #highLight:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_1
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->drop:Lcom/htc/fusion/fx/controls/FxDropControl;
    invoke-static {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1100(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v6

    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->DRAG_SCOPE:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxDropControl;->setDragScope([Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->bindDropEventListener()V

    .line 178
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->button:Lcom/htc/fusion/fx/controls/FxButton;
    invoke-static {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxButton;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mClickListenerPort:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->LANDSCAPE:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->get()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Rosie_shortcut.m10"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    .line 181
    .local v4, sceneLand:Lcom/htc/fusion/fx/FxScene;
    if-eqz v4, :cond_2

    .line 182
    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->CONTROLS_FX_NAMES:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 183
    aget-object v6, v0, v12

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setIcon(Lcom/htc/fusion/fx/controls/FxDynamicImage;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v1, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxDynamicImage;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    aget-object v6, v0, v10

    check-cast v6, Lcom/htc/fusion/fx/controls/FxTextLabel;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setLabel(Lcom/htc/fusion/fx/controls/FxTextLabel;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$300(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxTextLabel;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    aget-object v6, v0, v11

    check-cast v6, Lcom/htc/fusion/fx/controls/FxButton;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setButton(Lcom/htc/fusion/fx/controls/FxButton;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$400(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxButton;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    aget-object v6, v0, v13

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDropControl;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setDrop(Lcom/htc/fusion/fx/controls/FxDropControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$500(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxDropControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v6

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->build()Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;
    invoke-static {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$900(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    .line 186
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->button:Lcom/htc/fusion/fx/controls/FxButton;
    invoke-static {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxButton;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mClickListenerLand:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 192
    :cond_2
    invoke-virtual {p0, v10, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setScene(ILcom/htc/fusion/fx/FxScene;)V

    .line 193
    invoke-virtual {p0, v11, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setScene(ILcom/htc/fusion/fx/FxScene;)V

    .line 196
    return-object v3

    .line 155
    .end local v0           #controls:[Lcom/htc/fusion/fx/FxObject;
    .end local v3           #scene:Lcom/htc/fusion/fx/FxScene;
    .end local v4           #sceneLand:Lcom/htc/fusion/fx/FxScene;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->PORTRAIT:Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;

    invoke-virtual {v7}, Lcom/htc/android/rosie/home/fxcontrol/FxPathFinder$Path;->get()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Rosie_shortcut.m10"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v3

    .line 157
    .restart local v3       #scene:Lcom/htc/fusion/fx/FxScene;
    sget-object v6, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->CONTROLS_FX_NAMES:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 158
    .restart local v0       #controls:[Lcom/htc/fusion/fx/FxObject;
    aget-object v6, v0, v12

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setIcon(Lcom/htc/fusion/fx/controls/FxDynamicImage;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v1, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxDynamicImage;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    aget-object v6, v0, v10

    check-cast v6, Lcom/htc/fusion/fx/controls/FxTextLabel;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setLabel(Lcom/htc/fusion/fx/controls/FxTextLabel;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$300(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxTextLabel;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    aget-object v6, v0, v11

    check-cast v6, Lcom/htc/fusion/fx/controls/FxButton;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setButton(Lcom/htc/fusion/fx/controls/FxButton;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$400(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxButton;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    aget-object v6, v0, v13

    check-cast v6, Lcom/htc/fusion/fx/controls/FxDropControl;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setDrop(Lcom/htc/fusion/fx/controls/FxDropControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$500(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxDropControl;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v7

    aget-object v6, v0, v8

    check-cast v6, Lcom/htc/fusion/fx/controls/FxHitbox;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->setHitbox(Lcom/htc/fusion/fx/controls/FxHitbox;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;
    invoke-static {v7, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;Lcom/htc/fusion/fx/controls/FxHitbox;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;

    move-result-object v6

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->build()Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;
    invoke-static {v6}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;->access$900(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxBuilder;)Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    goto/16 :goto_0
.end method

.method private setButtonEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->button:Lcom/htc/fusion/fx/controls/FxButton;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->button:Lcom/htc/fusion/fx/controls/FxButton;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->button:Lcom/htc/fusion/fx/controls/FxButton;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->button:Lcom/htc/fusion/fx/controls/FxButton;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 437
    :cond_1
    return-void
.end method


# virtual methods
.method public bindDropEventListener()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->bindDropActivateListener()V

    .line 231
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->bindDropListener()V

    .line 232
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->bindDropOverListener()V

    .line 233
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->bindDropOutListener()V

    .line 234
    return-void
.end method

.method disableDropControl()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->enableDropControl(Z)V

    .line 220
    return-void
.end method

.method enableDropControl()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->enableDropControl(Z)V

    .line 216
    return-void
.end method

.method public enableDropControl(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->getFxDropControl()Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v0

    .line 224
    .local v0, drop:Lcom/htc/fusion/fx/controls/FxDropControl;
    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDropControl;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected getBitmapImpl(IIII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "nLeftPadding"
    .parameter "nTopPadding"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    .line 510
    .local v2, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, p1, p3

    add-int v5, p2, p4

    invoke-direct {v3, p1, p2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->getSceneSnapshot(Landroid/graphics/Rect;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v2           #scene:Lcom/htc/fusion/fx/FxScene;
    :goto_0
    return-object v0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b.get() with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFxDropControl()Lcom/htc/fusion/fx/controls/FxDropControl;
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->getFxDropControl(I)Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v0

    return-object v0
.end method

.method public getFxDropControl(I)Lcom/htc/fusion/fx/controls/FxDropControl;
    .locals 2
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 204
    packed-switch p1, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->drop:Lcom/htc/fusion/fx/controls/FxDropControl;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1100(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->drop:Lcom/htc/fusion/fx/controls/FxDropControl;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1100(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxDropControl;

    move-result-object v0

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 3

    .prologue
    .line 441
    const-string v0, "FxShortcutButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] FxShortcutButton.getScene() mOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOrientation:I

    invoke-super {p0, v0}, Lcom/htc/launcher/FxItem;->getScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public onBeforeDrag()V
    .locals 2

    .prologue
    .line 423
    const-string v0, "FxShortcutButton"

    const-string v1, "[EDIT_DEBUG] FxShortcutButton.onBeforeDrag()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-super {p0}, Lcom/htc/launcher/FxItem;->onBeforeDrag()V

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setButtonEnable(Z)V

    .line 427
    return-void
.end method

.method public onDrag()V
    .locals 2

    .prologue
    .line 406
    const-string v0, "FxShortcutButton"

    const-string v1, "[EDIT_DEBUG] FxShortcutButton.onDrag()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-super {p0}, Lcom/htc/launcher/FxItem;->onDrag()V

    .line 409
    invoke-super {p0}, Lcom/htc/launcher/FxItem;->onBeforeDrag()V

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setButtonEnable(Z)V

    .line 411
    return-void
.end method

.method public onDrop(Lcom/htc/launcher/DropTarget;II)V
    .locals 2
    .parameter "target"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 397
    const-string v0, "FxShortcutButton"

    const-string v1, "[EDIT_DEBUG] FxShortcutButton.onDrop()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-super {p0, p1, p2, p3}, Lcom/htc/launcher/FxItem;->onDrop(Lcom/htc/launcher/DropTarget;II)V

    .line 400
    invoke-super {p0}, Lcom/htc/launcher/FxItem;->onBeforeDrag()V

    .line 401
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setButtonEnable(Z)V

    .line 402
    return-void
.end method

.method public onDropAbort(Lcom/htc/launcher/DragSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 415
    const-string v0, "FxShortcutButton"

    const-string v1, "[EDIT_DEBUG] FxShortcutButton.onDropAbort()"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-super {p0, p1}, Lcom/htc/launcher/FxItem;->onDropAbort(Lcom/htc/launcher/DragSource;)V

    .line 418
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setButtonEnable(Z)V

    .line 419
    return-void
.end method

.method public onIconUpdate(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "id"
    .parameter "icon"
    .parameter "title"

    .prologue
    .line 362
    const-string v0, "FxShortcutButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ITEM - [SHORTCUT] UPDATE - onIconUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/htc/launcher/PendingUIUpdate;->instance()Lcom/htc/launcher/PendingUIUpdate;

    move-result-object v0

    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;

    invoke-direct {v1, p0, p3, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$IconUpdateRunnable;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/launcher/PendingUIUpdate;->postPending(ILjava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method public setContents(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "icon"
    .parameter "label"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 299
    invoke-virtual {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method

.method public setHitboxLongTabListener()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->hitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 460
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->hitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1900(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getLongTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mLongTapEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 461
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 322
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->icon:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1700(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->icon:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1700(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->icon:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1700(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->icon:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1700(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_0
    return-void
.end method

.method public setInfoForNavBar(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;I)V
    .locals 0
    .parameter "listenser"
    .parameter "index"

    .prologue
    .line 475
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_NavbarButtonLongTabListener:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$INavbarButtonLongTabListener;

    .line 476
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_nNavbarIndex:I

    .line 477
    return-void
.end method

.method public setOnClickListener(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 331
    const-string v0, "FxShortcutButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SHORTCUT_DEBUG] setOnClickListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mClickListenerPort:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->setOnClickListener(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;)V
    invoke-static {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mClickListenerLand:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;

    #calls: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->setOnClickListener(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;)V
    invoke-static {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;->access$1800(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxListener;Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$OnClickListener;)V

    .line 334
    return-void
.end method

.method public setTextLabelVisibility(Z)V
    .locals 1
    .parameter "bVisibility"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->label:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->label:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 306
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->label:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->label:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 310
    :cond_0
    return-void
.end method

.method public setThumbnails(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v5, 0x4

    .line 480
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 481
    .local v2, nCount:I
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->thumbnails:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$2200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 482
    if-gt v2, v5, :cond_2

    move v3, v2

    .line 483
    .local v3, nSize:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 484
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->thumbnails:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$2200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 485
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 486
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_lastIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_lastIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_lastIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 487
    :cond_0
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->thumbnails:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$2200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v4, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_lastIcons:[Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v0

    .line 489
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->thumbnails:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$2200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_OnPlaybackCompletedListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v4, v6}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 483
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #nSize:I
    :cond_2
    move v3, v5

    .line 482
    goto :goto_0

    .line 492
    .restart local v0       #i:I
    .restart local v3       #nSize:I
    :cond_3
    move v0, v2

    :goto_2
    if-ge v0, v5, :cond_4

    .line 493
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->thumbnails:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$2200(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 495
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->m_lastIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v6, v4, v0

    .line 497
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->updateShortcutIcon()V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 500
    :cond_4
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->timeline:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$2300(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v4

    const-string v5, "loading_to_loaded"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 502
    .end local v0           #i:I
    .end local v3           #nSize:I
    :cond_5
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 313
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->label:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsP:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->label:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->label:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mControlsL:Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->label:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;->access$1600(Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton$FxObjects;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 319
    :cond_0
    return-void
.end method

.method public updateOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 454
    const-string v0, "FxShortcutButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] FxShortcutButton.updateOritation(orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->mOrientation:I

    .line 456
    return-void
.end method

.method public updateShortcutIcon()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method
