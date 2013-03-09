.class Ljunit/extensions/TestSetup$1;
.super Ljava/lang/Object;
.source "TestSetup.java"

# interfaces
.implements Ljunit/framework/Protectable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/extensions/TestSetup;->run(Ljunit/framework/TestResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljunit/extensions/TestSetup;

.field final synthetic val$result:Ljunit/framework/TestResult;


# direct methods
.method constructor <init>(Ljunit/extensions/TestSetup;Ljunit/framework/TestResult;)V
    .locals 0

    iput-object p1, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    iput-object p2, p0, Ljunit/extensions/TestSetup$1;->val$result:Ljunit/framework/TestResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public protect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    invoke-virtual {v0}, Ljunit/extensions/TestSetup;->setUp()V

    iget-object v0, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    iget-object v1, p0, Ljunit/extensions/TestSetup$1;->val$result:Ljunit/framework/TestResult;

    invoke-virtual {v0, v1}, Ljunit/extensions/TestSetup;->basicRun(Ljunit/framework/TestResult;)V

    iget-object v0, p0, Ljunit/extensions/TestSetup$1;->this$0:Ljunit/extensions/TestSetup;

    invoke-virtual {v0}, Ljunit/extensions/TestSetup;->tearDown()V

    return-void
.end method
