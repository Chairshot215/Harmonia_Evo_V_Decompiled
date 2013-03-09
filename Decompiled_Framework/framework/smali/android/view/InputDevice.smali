.class public final Landroid/view/InputDevice;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputDevice$MotionRange;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYBOARD_TYPE_ALPHABETIC:I = 0x2

.field public static final KEYBOARD_TYPE_NONE:I = 0x0

.field public static final KEYBOARD_TYPE_NON_ALPHABETIC:I = 0x1

.field public static final MOTION_RANGE_ORIENTATION:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_PRESSURE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_SIZE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MAJOR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOOL_MINOR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MAJOR:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_TOUCH_MINOR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_RANGE_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCE_ANY:I = -0x100

.field public static final SOURCE_CLASS_BUTTON:I = 0x1

.field public static final SOURCE_CLASS_JOYSTICK:I = 0x10

.field public static final SOURCE_CLASS_MASK:I = 0xff

.field public static final SOURCE_CLASS_POINTER:I = 0x2

.field public static final SOURCE_CLASS_POSITION:I = 0x8

.field public static final SOURCE_CLASS_TRACKBALL:I = 0x4

.field public static final SOURCE_DPAD:I = 0x201

.field public static final SOURCE_GAMEPAD:I = 0x401

.field public static final SOURCE_JOYSTICK:I = 0x1000010

.field public static final SOURCE_KEYBOARD:I = 0x101

.field public static final SOURCE_MOUSE:I = 0x2002

.field public static final SOURCE_STYLUS:I = 0x4002

.field public static final SOURCE_TOUCHPAD:I = 0x100008

.field public static final SOURCE_TOUCHSCREEN:I = 0x1002

.field public static final SOURCE_TRACKBALL:I = 0x10004

.field public static final SOURCE_UNKNOWN:I


# instance fields
.field private mId:I

.field private mKeyCharacterMapFile:Ljava/lang/String;

.field private mKeyboardType:I

.field private final mMotionRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mSources:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/InputDevice$1;

    invoke-direct {v0}, Landroid/view/InputDevice$1;-><init>()V

    sput-object v0, Landroid/view/InputDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/InputDevice$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/InputDevice;-><init>()V

    return-void
.end method

.method static synthetic access$400(Landroid/view/InputDevice;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InputDevice;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private addMotionRange(IIFFFF)V
    .locals 9

    iget-object v8, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/InputDevice$MotionRange;

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/InputDevice$MotionRange;-><init>(IIFFFFLandroid/view/InputDevice$1;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static getDevice(I)Landroid/view/InputDevice;
    .locals 4

    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not get input device information from Window Manager."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getDeviceIds()[I
    .locals 4

    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->getInputDeviceIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not get input device ids from Window Manager."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mSources:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMapFile:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/view/InputDevice;->addMotionRange(IIFFFF)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mId:I

    return v0
.end method

.method public getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method getKeyCharacterMapFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mKeyCharacterMapFile:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyboardType()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mKeyboardType:I

    return v0
.end method

.method public getMotionRange(I)Landroid/view/InputDevice$MotionRange;
    .locals 4

    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    #getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$000(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMotionRange(II)Landroid/view/InputDevice$MotionRange;
    .locals 4

    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    #getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$000(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p1, :cond_0

    #getter for: Landroid/view/InputDevice$MotionRange;->mSource:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    if-ne v3, p2, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMotionRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/InputDevice$MotionRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()I
    .locals 1

    iget v0, p0, Landroid/view/InputDevice;->mSources:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input Device "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Keyboard Type: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/view/InputDevice;->mKeyboardType:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Key Character Map: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InputDevice;->mKeyCharacterMapFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Sources: 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/InputDevice;->mSources:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x101

    const-string/jumbo v5, "keyboard"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v4, 0x201

    const-string v5, "dpad"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v4, 0x1002

    const-string/jumbo v5, "touchscreen"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v4, 0x2002

    const-string/jumbo v5, "mouse"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v4, 0x4002

    const-string/jumbo v5, "stylus"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const v4, 0x10004

    const-string/jumbo v5, "trackball"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const v4, 0x100008

    const-string/jumbo v5, "touchpad"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const v4, 0x1000010

    const-string/jumbo v5, "joystick"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v4, 0x401

    const-string v5, "gamepad"

    invoke-direct {p0, v0, v4, v5}, Landroid/view/InputDevice;->appendSourceDescriptionIfApplicable(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const-string v4, " )\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice$MotionRange;

    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$000(Landroid/view/InputDevice$MotionRange;)I

    move-result v5

    invoke-static {v5}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": source=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/view/InputDevice$MotionRange;->mSource:I
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " min="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/view/InputDevice$MotionRange;->mMin:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$500(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " max="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/view/InputDevice$MotionRange;->mMax:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$600(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " flat="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/view/InputDevice$MotionRange;->mFlat:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$700(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " fuzz="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/view/InputDevice$MotionRange;->mFuzz:F
    invoke-static {v3}, Landroid/view/InputDevice$MotionRange;->access$800(Landroid/view/InputDevice$MotionRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_0
    const-string/jumbo v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v4, "non-alphabetic"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    const-string v4, "alphabetic"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v3, p0, Landroid/view/InputDevice;->mId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/view/InputDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v3, p0, Landroid/view/InputDevice;->mSources:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/view/InputDevice;->mKeyboardType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/view/InputDevice;->mKeyCharacterMapFile:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/view/InputDevice;->mMotionRanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice$MotionRange;

    #getter for: Landroid/view/InputDevice$MotionRange;->mAxis:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$000(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #getter for: Landroid/view/InputDevice$MotionRange;->mSource:I
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$100(Landroid/view/InputDevice$MotionRange;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #getter for: Landroid/view/InputDevice$MotionRange;->mMin:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$500(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    #getter for: Landroid/view/InputDevice$MotionRange;->mMax:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$600(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    #getter for: Landroid/view/InputDevice$MotionRange;->mFlat:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$700(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    #getter for: Landroid/view/InputDevice$MotionRange;->mFuzz:F
    invoke-static {v2}, Landroid/view/InputDevice$MotionRange;->access$800(Landroid/view/InputDevice$MotionRange;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
