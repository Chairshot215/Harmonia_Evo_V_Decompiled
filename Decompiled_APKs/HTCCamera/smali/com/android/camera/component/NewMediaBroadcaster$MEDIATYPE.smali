.class final enum Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;
.super Ljava/lang/Enum;
.source "NewMediaBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/NewMediaBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MEDIATYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

.field public static final enum Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

.field public static final enum Video:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    const-string v1, "Picture"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    new-instance v0, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    const-string v1, "Video"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Video:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    sget-object v1, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Video:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->$VALUES:[Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;
    .locals 1

    const-class v0, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;
    .locals 1

    sget-object v0, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->$VALUES:[Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-virtual {v0}, [Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    return-object v0
.end method
