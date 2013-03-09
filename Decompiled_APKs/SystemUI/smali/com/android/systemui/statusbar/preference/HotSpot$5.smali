.class Lcom/android/systemui/statusbar/preference/HotSpot$5;
.super Ljava/lang/Object;
.source "HotSpot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/HotSpot;->showRemindDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/HotSpot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$5;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/HotSpot$5;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->setHotspotStatus()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$1000(Lcom/android/systemui/statusbar/preference/HotSpot;)V

    return-void
.end method
