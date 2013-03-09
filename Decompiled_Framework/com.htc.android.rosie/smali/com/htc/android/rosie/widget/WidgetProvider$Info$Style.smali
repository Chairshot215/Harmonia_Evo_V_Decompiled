.class public final Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
.super Ljava/lang/Object;
.source "WidgetProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/WidgetProvider$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final component:Landroid/content/ComponentName;

.field private date:Ljava/lang/CharSequence;

.field private final descRes:I

.field private description:Ljava/lang/CharSequence;

.field private final id:Ljava/lang/String;

.field private final imgRes:I

.field private label:Ljava/lang/CharSequence;

.field private final labelRes:I

.field public final settings:Landroid/content/ComponentName;

.field public final view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$1;

    invoke-direct {v0}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$1;-><init>()V

    sput-object v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->labelRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->descRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->imgRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->id:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->settings:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    invoke-direct {v3, v1, v2, v0}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;-><init>(IILjava/lang/String;)V

    iput-object v3, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/rosie/widget/WidgetProvider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/ComponentName;Landroid/content/ComponentName;Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->labelRes:I

    iput p4, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->descRes:I

    iput p7, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->imgRes:I

    iput-object p3, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->label:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->description:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->date:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->id:Ljava/lang/String;

    iput-object p8, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    iput-object p9, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->settings:Landroid/content/ComponentName;

    iput-object p10, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->date:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->description:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDescriptionRes()I
    .locals 1

    iget v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->descRes:I

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLabelRes()I
    .locals 1

    iget v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->labelRes:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPreviewRes()I
    .locals 1

    iget v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->imgRes:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget style: label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->description:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", img="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->imgRes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", component/component=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", span="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v2, v2, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v2, v2, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scene="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget-object v2, v2, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->descRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->imgRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->settings:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v0, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v0, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget-object v0, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
