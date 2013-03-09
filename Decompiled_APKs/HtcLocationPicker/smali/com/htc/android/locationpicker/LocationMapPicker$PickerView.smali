.class Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;
.super Landroid/widget/ImageView;
.source "LocationMapPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/locationpicker/LocationMapPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PickerView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/locationpicker/LocationMapPicker;


# direct methods
.method public constructor <init>(Lcom/htc/android/locationpicker/LocationMapPicker;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    .line 786
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 787
    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->paddingLeft:I
    invoke-static {p1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2400(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v0

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->paddingTop:I
    invoke-static {p1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2500(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v1

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->paddingRight:I
    invoke-static {p1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2600(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v2

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->paddingBottom:I
    invoke-static {p1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2700(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->setPadding(IIII)V

    .line 788
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "event"

    .prologue
    .line 792
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isMapMoving:Z
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1400(Lcom/htc/android/locationpicker/LocationMapPicker;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->isMapFling:Z
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1200(Lcom/htc/android/locationpicker/LocationMapPicker;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 898
    :goto_0
    return v1

    .line 794
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 796
    const-string v1, "LocationMapPicker"

    const-string v2, "picker onTouchEvent, ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Vibrator;

    .line 800
    .local v16, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x1e

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 802
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 803
    .local v15, padding_Top:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 804
    .local v12, padding_Bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 805
    .local v13, padding_Left:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 806
    .local v14, padding_Right:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v4, v1

    .line 807
    .local v4, realX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mStatusBarHeight:I
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2800(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v2

    sub-int v5, v1, v2

    .line 810
    .local v5, realY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2300(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->removeView(Landroid/view/View;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    move-object/from16 v17, v0

    new-instance v1, Lcom/google/android/maps/MapView$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mIconBigWidth:I
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3000(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mIconBigHeight:I
    invoke-static {v3}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3100(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mDefAlign:I
    invoke-static {v6}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3200(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, v17

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;
    invoke-static {v0, v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2902(Lcom/htc/android/locationpicker/LocationMapPicker;Lcom/google/android/maps/MapView$LayoutParams;)Lcom/google/android/maps/MapView$LayoutParams;

    .line 815
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2900(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    .line 818
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2300(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->bigIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3300(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2300(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    move-result-object v1

    invoke-virtual {v1, v13, v15, v14, v12}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->setPadding(IIII)V

    .line 820
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2300(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMarkParam:Lcom/google/android/maps/MapView$LayoutParams;
    invoke-static {v3}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2900(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressBarLayout:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1600(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 824
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    const/4 v2, 0x0

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mAddressString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$902(Lcom/htc/android/locationpicker/LocationMapPicker;Ljava/lang/String;)Ljava/lang/String;

    .line 826
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurrentHint:I
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3400(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mHintDlg:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3500(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mHintDlg:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3500(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 828
    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 830
    .end local v4           #realX:I
    .end local v5           #realY:I
    .end local v12           #padding_Bottom:I
    .end local v13           #padding_Left:I
    .end local v14           #padding_Right:I
    .end local v15           #padding_Top:I
    .end local v16           #vibrator:Landroid/os/Vibrator;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 832
    const-string v1, "LocationMapPicker"

    const-string v2, "picker onTouchEvent, ACTION_UP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v11

    .line 836
    .local v11, mapWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v10

    .line 837
    .local v10, mapHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v4, v1

    .line 838
    .restart local v4       #realX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v5, v1

    .line 839
    .restart local v5       #realY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mIconHeight:I
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3600(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->paddingTop:I
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2500(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v9, v1, v2

    .line 841
    .local v9, limitHeight:I
    if-gez v4, :cond_6

    .line 842
    const/4 v4, 0x0

    .line 847
    :cond_4
    :goto_1
    move v7, v4

    .line 849
    .local v7, iconX:I
    if-le v5, v10, :cond_7

    .line 850
    move v5, v10

    .line 855
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mStatusBarHeight:I
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2800(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v1

    sub-int/2addr v5, v1

    .line 856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->paddingBottom:I
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2700(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v1

    add-int v8, v5, v1

    .line 858
    .local v8, iconY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1900(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v1

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 859
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1900(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v1

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3700(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v1

    iput v7, v1, Landroid/graphics/Point;->x:I

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3700(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v1

    iput v8, v1, Landroid/graphics/Point;->y:I

    .line 864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2300(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->smallIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3800(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mPickerMark:Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2300(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->paddingLeft:I
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2400(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->paddingTop:I
    invoke-static {v3}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2500(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->paddingRight:I
    invoke-static {v6}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2600(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->paddingBottom:I
    invoke-static/range {v17 .. v17}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2700(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v1, v2, v3, v6, v0}, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->setPadding(IIII)V

    .line 867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1900(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1900(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-interface {v2, v3, v6}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurGeoPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v1, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3902(Lcom/htc/android/locationpicker/LocationMapPicker;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;

    .line 868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    invoke-interface {v2, v7, v8}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    #setter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconGeoPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v1, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$4002(Lcom/htc/android/locationpicker/LocationMapPicker;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->ICON_MAP_MODE:I
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$4100(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v2

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->switchIconMode(I)V
    invoke-static {v1, v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2200(Lcom/htc/android/locationpicker/LocationMapPicker;I)V

    .line 872
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapCtrl:Lcom/google/android/maps/MapController;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$000(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurGeoPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3900(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    iget-object v3, v3, Lcom/htc/android/locationpicker/LocationMapPicker;->setCenterLocation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mMapView:Lcom/google/android/maps/MapView;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1700(Lcom/htc/android/locationpicker/LocationMapPicker;)Lcom/google/android/maps/MapView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 875
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 844
    .end local v7           #iconX:I
    .end local v8           #iconY:I
    :cond_6
    if-le v4, v11, :cond_4

    .line 845
    move v4, v11

    goto/16 :goto_1

    .line 852
    .restart local v7       #iconX:I
    :cond_7
    if-ge v5, v9, :cond_5

    .line 853
    move v5, v9

    goto/16 :goto_2

    .line 877
    .end local v4           #realX:I
    .end local v5           #realY:I
    .end local v7           #iconX:I
    .end local v9           #limitHeight:I
    .end local v10           #mapHeight:I
    .end local v11           #mapWidth:I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 878
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v4, v1

    .line 879
    .restart local v4       #realX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mStatusBarHeight:I
    invoke-static {v2}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$2800(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v2

    sub-int v5, v1, v2

    .line 881
    .restart local v5       #realY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1900(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v1

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurScreenPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$1900(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v1

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3700(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v1

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mCurIconScreenPoint:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3700(Lcom/htc/android/locationpicker/LocationMapPicker;)Landroid/graphics/Point;

    move-result-object v1

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 887
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mDefAlign:I
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$3200(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 895
    :goto_3
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #getter for: Lcom/htc/android/locationpicker/LocationMapPicker;->mDebugMode:I
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$4300(Lcom/htc/android/locationpicker/LocationMapPicker;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->updateFinalPosition()V
    invoke-static {v1}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$400(Lcom/htc/android/locationpicker/LocationMapPicker;)V

    .line 898
    .end local v4           #realX:I
    .end local v5           #realY:I
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 891
    .restart local v4       #realX:I
    .restart local v5       #realY:I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/locationpicker/LocationMapPicker$PickerView;->this$0:Lcom/htc/android/locationpicker/LocationMapPicker;

    int-to-float v2, v4

    int-to-float v3, v5

    #calls: Lcom/htc/android/locationpicker/LocationMapPicker;->moveMark(FF)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/locationpicker/LocationMapPicker;->access$4200(Lcom/htc/android/locationpicker/LocationMapPicker;FF)V

    goto :goto_3

    .line 887
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x51 -> :sswitch_1
    .end sparse-switch
.end method
