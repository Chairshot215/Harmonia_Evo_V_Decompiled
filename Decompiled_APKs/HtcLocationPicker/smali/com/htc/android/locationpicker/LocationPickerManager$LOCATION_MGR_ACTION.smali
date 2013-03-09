.class final enum Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;
.super Ljava/lang/Enum;
.source "LocationPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/LocationPickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LOCATION_MGR_ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

.field public static final enum INVALID_ACTION:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

.field public static final enum NAVI_PICK_DEST_FROM_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

.field public static final enum REVERSE_ADDRESS_ON_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

.field public static final enum REVERSE_GEOCODE_ON_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

.field public static final enum SHOW_LOC_PICKER_MGR:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    const-string v1, "INVALID_ACTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->INVALID_ACTION:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    .line 51
    new-instance v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    const-string v1, "SHOW_LOC_PICKER_MGR"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->SHOW_LOC_PICKER_MGR:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    .line 52
    new-instance v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    const-string v1, "REVERSE_ADDRESS_ON_MAP"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->REVERSE_ADDRESS_ON_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    .line 53
    new-instance v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    const-string v1, "REVERSE_GEOCODE_ON_MAP"

    invoke-direct {v0, v1, v5}, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->REVERSE_GEOCODE_ON_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    .line 54
    new-instance v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    const-string v1, "NAVI_PICK_DEST_FROM_MAP"

    invoke-direct {v0, v1, v6}, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->NAVI_PICK_DEST_FROM_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    sget-object v1, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->INVALID_ACTION:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->SHOW_LOC_PICKER_MGR:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->REVERSE_ADDRESS_ON_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->REVERSE_GEOCODE_ON_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->NAVI_PICK_DEST_FROM_MAP:Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->$VALUES:[Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->$VALUES:[Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    invoke-virtual {v0}, [Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/locationpicker/LocationPickerManager$LOCATION_MGR_ACTION;

    return-object v0
.end method
