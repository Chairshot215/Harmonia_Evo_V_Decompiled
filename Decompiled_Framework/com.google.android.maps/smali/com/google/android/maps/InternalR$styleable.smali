.class final Lcom/google/android/maps/InternalR$styleable;
.super Ljava/lang/Object;
.source "InternalR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/InternalR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "styleable"
.end annotation


# static fields
.field public static final MapView:[I

.field public static final MapView_apiKey:I

.field private static final cls:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/internal/R$styleable;

    sput-object v0, Lcom/google/android/maps/InternalR$styleable;->cls:Ljava/lang/Class;

    sget-object v0, Lcom/google/android/maps/InternalR$styleable;->cls:Ljava/lang/Class;

    const-string v1, "MapView_apiKey"

    #calls: Lcom/google/android/maps/InternalR;->get(Ljava/lang/Class;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/google/android/maps/InternalR;->access$000(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$styleable;->MapView_apiKey:I

    sget-object v0, Lcom/google/android/maps/InternalR$styleable;->cls:Ljava/lang/Class;

    const-string v1, "MapView"

    #calls: Lcom/google/android/maps/InternalR;->getObject(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/google/android/maps/InternalR;->access$100(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    sput-object v0, Lcom/google/android/maps/InternalR$styleable;->MapView:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
