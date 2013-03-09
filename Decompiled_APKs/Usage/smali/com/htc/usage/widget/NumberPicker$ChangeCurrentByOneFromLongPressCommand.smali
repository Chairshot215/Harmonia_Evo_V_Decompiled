.class Lcom/htc/usage/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/htc/usage/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/htc/usage/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/htc/usage/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/usage/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1982
    invoke-direct {p0, p1}, Lcom/htc/usage/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V

    return-void
.end method

.method private setIncrement(Z)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 1986
    iput-boolean p1, p0, Lcom/htc/usage/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 1987
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    iget-boolean v1, p0, Lcom/htc/usage/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    #calls: Lcom/htc/usage/widget/NumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v0, v1}, Lcom/htc/usage/widget/NumberPicker;->access$100(Lcom/htc/usage/widget/NumberPicker;Z)V

    .line 1991
    iget-object v0, p0, Lcom/htc/usage/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    iget-object v1, p0, Lcom/htc/usage/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/htc/usage/widget/NumberPicker;

    #getter for: Lcom/htc/usage/widget/NumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Lcom/htc/usage/widget/NumberPicker;->access$2200(Lcom/htc/usage/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/usage/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1992
    return-void
.end method
